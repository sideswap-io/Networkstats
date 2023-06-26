import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:isar/isar.dart';

import 'package:network_stats/backend/explora_api_interface.dart';
import 'package:network_stats/models/blockstream_api.dart';
import 'package:network_stats/models/network_stats.dart';
import 'package:network_stats/utils/configuration.dart';
import 'package:network_stats/utils/custom_logger.dart';

class BlockApi extends EsploraApiInterface implements BaseEsploraApiInterface {
  BlockApi(super.isar);

  @override
  Future<void> scrape() async {
    final apiBlockHeightResult = await _getApiBlockHeight();
    final apiBlockHeight = apiBlockHeightResult.match((l) {
      logger.e(l);
    }, (r) => r);

    if (apiBlockHeight == null) {
      return;
    }

    while (true) {
      final dbBlockHeightResult = await _getHighestDbBlockHeight();
      final dbBlockHeight = dbBlockHeightResult.match((l) {
        logger.e(l);
        return apiBlockHeight - Configuration.maxBlocks;
      }, (r) => r);

      if (dbBlockHeight == apiBlockHeight) {
        break;
      }

      var startBlockHeight = 0;
      final blockHeightDiff = apiBlockHeight - dbBlockHeight;
      // api returns list of 10 blocks from blockheight-10 to blockheight
      if (blockHeightDiff >= 10) {
        startBlockHeight = dbBlockHeight + 10;
      } else {
        startBlockHeight = apiBlockHeight;
      }

      final blocksResult = await _getBlocks(startBlockHeight: startBlockHeight);
      final blocks = blocksResult.match((l) {
        logger.e(l);
      }, (r) => r);

      if (blocks == null || blocks.blocks == null) {
        logger.w('Block height $startBlockHeight is empty!');
        break;
      }

      final blocksToParse = <BSBlock>[];
      blocksToParse.addAll(blocks.blocks ?? []);

      try {
        blocksToParse.removeWhere((e) => e.height! <= dbBlockHeight);
        if (blocksToParse.length == 0) {
          break;
        }
      } catch (e) {
        logger.e(e);
      }

      logger.i(
          'Parsing ${blocksToParse.length} blocks started from $startBlockHeight');

      final stopwatch = Stopwatch()..start();
      for (var block in blocksToParse) {
        await _parseAndUpdateSingleBlock(block: block);
      }

      logger.i(
          'Parsing ${blocksToParse.length} blocks took ${stopwatch.elapsed}');
    }

    var totalBlocks = await isar.nSBlocks.count();
    if (totalBlocks > Configuration.maxBlocks) {
      final lowestBlockHeight = (apiBlockHeight - Configuration.maxBlocks);
      final blocksToRemove = await isar.nSBlocks
          .where()
          .blockHeightLessThan(lowestBlockHeight)
          .findAll();

      logger.i('Total blocks: $totalBlocks');

      if (blocksToRemove.isNotEmpty) {
        final idsToRemove = blocksToRemove.map((e) => e.id).toList();
        await isar.writeTxn(() async {
          final deletedCount = await isar.nSBlocks.deleteAll(idsToRemove);
          logger.i('$deletedCount oldest blocks has been removed from db');
        });
        totalBlocks = await isar.nSBlocks.count();
        logger.i('New total blocks: $totalBlocks');
      }
    }
  }

  Future<void> scrapeMissingBlocks() async {
    logger.i('Checking db for missing blocks...');

    final lowestResult = await _getLowestDbBlockHeight();
    final lowest = lowestResult.match((l) {
      logger.e(l);
    }, (r) => r);

    final highestResult = await _getHighestDbBlockHeight();
    final highest = highestResult.match((l) {
      logger.e(l);
    }, (r) => r);

    if (highest == null || lowest == null) {
      return;
    }

    var missingCounter = 0;
    var lowestHeight = lowest;

    final savedBlocks = await isar.nSBlocks.where(sort: Sort.desc).findAll();
    if (savedBlocks.isEmpty) {
      return;
    }

    final blocks = savedBlocks.map((e) => e.blockHeight!).toList()
      ..sort((a, b) => a.compareTo(b));

    final stopwatch = Stopwatch()..start();
    var start = DateTime.now();
    var analyzed = 0;
    final totalBlocksCount = blocks.length;
    logger.i('Total blocks in db: $totalBlocksCount');

    while (lowestHeight < highest) {
      analyzed++;

      var now = DateTime.now();
      final diff = now.difference(start);
      if (diff.inSeconds > 10) {
        start = now = DateTime.now();
        final analyzedBlocks = analyzed / 10;
        blocks.removeWhere((e) => e < lowestHeight);
        logger.i('Blocks left: ${blocks.length}. Analyzed $analyzedBlocks/s');
        analyzed = 0;
      }

      final existingBlock = blocks.any((e) => e == lowestHeight);

      if (existingBlock) {
        lowestHeight++;
        continue;
      }

      await _updateMissingBlock(blockHeight: lowestHeight);

      missingCounter++;
      lowestHeight++;
    }

    final analyzedAverage = (totalBlocksCount / stopwatch.elapsed.inSeconds);
    if (missingCounter != 0) {
      logger.i('$missingCounter missing blocks updated');
    }

    logger.i(
        'It took ${stopwatch.elapsed} to analyze $totalBlocksCount blocks. Average $analyzedAverage/s');
  }

  Future<void> _updateMissingBlock({required int blockHeight}) async {
    logger.i('Found missing block: $blockHeight');
    final blockHashResult = await _getBlockHash(blockHeight: blockHeight);

    final blockHash = blockHashResult.match((l) {
      logger.e(l);
    }, (r) => r);

    if (blockHash == null) {
      logger.e('Empty block hash for missing block $blockHeight');
      return;
    }

    // download block
    final blockResult = await _getSingleBlock(blockHash: blockHash);

    final block = blockResult.match((l) {
      logger.e(l);
    }, (r) => r);

    if (block == null) {
      logger.e('Missing block ${blockHeight} data is empty');
      return;
    }

    // and then parse it
    logger.i('Parsing missing block ${block.height}');
    await _parseAndUpdateSingleBlock(block: block);
  }

  Future<bool> _parseAndUpdateSingleBlock(
      {required BSBlock block, bool updateExisting = false}) async {
    final nsblockResult = await _parseBlock(block: block);
    final nsblock = nsblockResult.match((l) {
      logger.e(l);
    }, (r) => r);

    if (nsblock == null) {
      logger.w('Unable to parse block: ${block.id} height: ${block.height}');
      return false;
    }

    try {
      await isar.writeTxn(() async {
        final existingBlock = await isar.nSBlocks
            .where()
            .blockHeightEqualTo(block.height)
            .findFirst();
        if (existingBlock != null) {
          if (!updateExisting) {
            return false;
          }
          logger.i('Block ${existingBlock.blockHeight} found in db, updating');
          nsblock.id = existingBlock.id;
        }

        logger.i('${nsblock.blockHash} height: ${nsblock.blockHeight}');
        await isar.nSBlocks.put(nsblock);
      });
    } catch (e, st) {
      logger.e(e);
      logger.e(st);

      return false;
    }

    return true;
  }

  Future<Either<Exception, NSBlock>> _parseBlock(
      {required BSBlock block}) async {
    final transactionsResult = await _getBlockTransactions(block: block);
    final bsTransactionList = transactionsResult.match((l) {
      logger.e('Stay calm, missing block will be fetched later');
      logger.e(l);
    }, (r) => r);

    if (bsTransactionList?.transactions == null) {
      logger.w('Tx is empty in block ${block.height}');
      return Left(Exception(
          'Unable to request transaction list for block ${block.height}'));
    }

    final txList = <BSTransaction>[];
    txList.addAll(bsTransactionList?.transactions ?? []);

    try {
      logger.d(txList.length);
      txList.removeWhere((element) =>
          element.vin?.any((element) => element.isCoinbase == true) == true);
      logger.d(txList.length);
    } catch (e) {
      logger.e(e);
    }

    final txCount = txList.length;
    var pegInCount = 0;
    var pegInVolume = 0;
    var pegOutCount = 0;
    var pegOutVolume = 0;

    var swapCount = 0;

    for (var transaction in txList) {
      bool txIsPegIn = false;
      if (transaction.vin == null) {
        logger
            .w('Empty vin in tx ${transaction.txid} in block ${block.height}');
        continue;
      }

      var vinCounter = 0;
      for (var vin in transaction.vin!) {
        // peg in
        if (vin.isPegIn ?? false) {
          logger.i(
              'PegIn found, vin index $vinCounter. Tx ${transaction.txid} in block ${block.height}');
          pegInCount = pegInCount + 1;
          txIsPegIn = true;
        }
        vinCounter = vinCounter + 1;
      }

      if (transaction.vout == null) {
        logger
            .w('Empty vout in tx ${transaction.txid} in block ${block.height}');
        continue;
      }

      for (var vout in transaction.vout!) {
        var voutCounter = 0;
        // peg in
        if (vout.value != null &&
            vout.value != 0 &&
            vout.scriptpubkeyType != 'fee' &&
            txIsPegIn) {
          pegInVolume = pegInVolume + vout.value!;
        }

        // peg out
        if (vout.pegout != null && (vout.value == null || vout.value == 0)) {
          logger.w(
              'PegOut found but value is zero or empty in tx ${transaction.txid} in block ${block.height}');
        }

        if (vout.pegout != null && txIsPegIn) {
          logger.w(
              'PegIn and PegOut found in tx ${transaction.txid} in block ${block.height}');
        }

        if (vout.pegout != null && vout.value != null) {
          logger.i(
              'PegOut found, vout index $voutCounter. Tx ${transaction.txid} in block ${block.height}');
          pegOutCount = pegOutCount + 1;
          pegOutVolume = pegOutVolume + vout.value!;
        }
        voutCounter = voutCounter + 1;
      }

      // swaps
      if (transaction.vin!.length >= 3 && transaction.vout!.length >= 4) {
        logger
            .i('Swap found in tx ${transaction.txid} in block ${block.height}');
        swapCount = swapCount + 1;
      }
    }

    final nsblock = NSBlock(
      blockHeight: block.height,
      blockHash: block.id,
      txCount: txCount,
      pegInCount: pegInCount,
      pegInVolume: pegInVolume,
      pegOutCount: pegOutCount,
      pegOutVolume: pegOutVolume,
      burnCount: 0,
      burnVolume: 0,
      swapCount: swapCount,
    );

    if (nsblock.pegInCount != 0 ||
        nsblock.pegOutCount != 0 ||
        nsblock.swapCount != 0) {
      logger.i(nsblock.toString());
    }

    return Right(nsblock);
  }

  Future<Either<Exception, BSBlockTransactions>> _getBlockTransactions(
      {required BSBlock block}) async {
    if (block.id == null) {
      logger.e(block.toJson());
      return Left(Exception('Unable to parse block'));
    }

    final client = RetryClient(http.Client(), whenError: whenError);
    Uri uri = Uri.parse('${Configuration.liquid}/block/${block.id}/txs');

    try {
      final response = await client.get(uri);
      final statusCode = response.statusCode;

      if (statusCode >= 200 && statusCode < 300) {
        final json = jsonDecode(response.body);
        final transactions =
            BSBlockTransactions.fromJson({'transactions': json});
        return Right(transactions);
      } else {
        return Left(Exception(response.reasonPhrase));
      }
    } catch (e, stackTrace) {
      logger.e(e);
      logger.e(stackTrace);
      return Left(Exception(e));
    } finally {
      client.close();
    }
  }

  Future<Either<Exception, BSBlocks>> _getBlocks(
      {required int startBlockHeight}) async {
    final client = RetryClient(http.Client(), whenError: whenError);

    Uri uri = Uri.parse('${Configuration.liquid}/blocks/$startBlockHeight');

    try {
      final response = await client.get(uri);
      final statusCode = response.statusCode;

      if (statusCode >= 200 && statusCode < 300) {
        final json = jsonDecode(response.body);
        final blocks = BSBlocks.fromJson({'blocks': json});
        if (blocks.blocks == null) {
          return Left(Exception('Block list is empty'));
        }
        final blockList = <BSBlock>[];
        blockList.addAll(blocks.blocks!);
        blockList.sort(
          (a, b) => a.height?.compareTo(b.height ?? 0) ?? 0,
        );
        return Right(BSBlocks(blocks: blockList));
      } else {
        return Left(Exception(response.reasonPhrase));
      }
    } catch (e) {
      return Left(Exception(e));
    } finally {
      client.close();
    }
  }

  Future<Either<Exception, BSBlock>> _getSingleBlock(
      {required String blockHash}) async {
    if (blockHash.isEmpty) {
      return Left(Exception('Block hash cannot be empty'));
    }

    final client = RetryClient(http.Client(), whenError: whenError);

    Uri uri = Uri.parse('${Configuration.liquid}/block/$blockHash');

    try {
      final response = await client.get(uri);
      final statusCode = response.statusCode;

      if (statusCode >= 200 && statusCode < 300) {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        final block = BSBlock.fromJson(json);
        return Right(block);
      } else {
        return Left(Exception(response.reasonPhrase));
      }
    } catch (e) {
      return Left(Exception(e));
    } finally {
      client.close();
    }
  }

  Future<Either<Exception, String>> _getBlockHash(
      {required int blockHeight}) async {
    final client = RetryClient(http.Client(), whenError: whenError);

    // api returns list of 10 blocks from blockheight-10 to blockheight
    Uri uri = Uri.parse('${Configuration.liquid}/block-height/$blockHeight');

    try {
      final response = await client.get(uri);
      final statusCode = response.statusCode;

      if (statusCode >= 200 && statusCode < 300) {
        if (response.body.isEmpty) {
          return Left(Exception('Response for block $blockHeight is empty'));
        }
        return Right(response.body);
      } else {
        return Left(Exception(response.reasonPhrase));
      }
    } catch (e) {
      return Left(Exception(e));
    } finally {
      client.close();
    }
  }

  Future<Either<Exception, int>> _getApiBlockHeight() async {
    final client = RetryClient(http.Client(), whenError: whenError);

    try {
      Uri uri = Uri.parse('${Configuration.liquid}/blocks/tip/height');

      final response = await client.get(uri);
      client.close();

      final statusCode = response.statusCode;

      if (statusCode >= 200 && statusCode < 300) {
        int blockHeight = int.tryParse(response.body) ?? 0;
        return Right(blockHeight);
      } else {
        return Left(HttpException(response.reasonPhrase ?? ''));
      }
    } on Exception catch (e) {
      return Left(e);
    }
  }

  Future<Either<Exception, int>> _getHighestDbBlockHeight() async {
    final highestBlockHeight =
        await isar.nSBlocks.where(sort: Sort.desc).anyBlockHeight().findFirst();

    if (highestBlockHeight?.blockHeight == null) {
      return Left(Exception('Error getting highest block height'));
    }

    return Right(highestBlockHeight!.blockHeight!);
  }

  Future<Either<Exception, int>> _getLowestDbBlockHeight() async {
    final lowestBlockHeight =
        await isar.nSBlocks.where(sort: Sort.asc).anyBlockHeight().findFirst();

    if (lowestBlockHeight?.blockHeight == null) {
      return Left(Exception('Error getting lowest block height'));
    }

    return Right(lowestBlockHeight!.blockHeight!);
  }
}
