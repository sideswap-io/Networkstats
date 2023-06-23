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

const int maxBlocks = 525600;

class BlockApi extends EsploraApiInterface implements BaseEsploraApiInterface {
  BlockApi(super.isar);

  Future<void> scrape() async {
    final startBlockResult = await getStartBlockHeight();

    var startBlockHeight = startBlockResult.match((l) {
      logger.e(l);
    }, (r) => r);

    if (startBlockHeight == null) {
      return;
    }

    startBlockHeight = 1875709;

    final blocksResult = await getBlocks(startBlock: startBlockHeight);

    final blocks = blocksResult.match((l) {
      logger.e(l);
    }, (r) => r);

    if (blocks == null || blocks.blocks == null) {
      logger.w('Block height $startBlockHeight is empty!');
      return;
    }

    logger.i(
        'Parsing ${blocks.blocks?.length} blocks started from $startBlockHeight');

    final stopwatch = Stopwatch()..start();
    for (var block in blocks.blocks!) {
      final nsblockResult = await parseBlock(block: block);
      final nsblock = nsblockResult.match((l) {
        logger.e(l);
      }, (r) => r);

      if (nsblock == null) {
        logger.w('Unable to parse block: ${block.id} height: ${block.height}');
        break;
      }

      try {
        final existingBlock = await isar.nSBlocks
            .where()
            .blockHeightEqualTo(block.height)
            .findFirst();
        if (existingBlock != null) {
          logger.i('Block ${existingBlock.id} found in db, updating.');
          nsblock.id = existingBlock.id;
        }

        await isar.writeTxn(() async {
          await isar.nSBlocks.put(nsblock);
        });
      } catch (e, st) {
        logger.e(e);
        logger.e(st);
      }
    }

    logger
        .i('Parsing ${blocks.blocks!.length} blocks took ${stopwatch.elapsed}');
  }

  Future<void> saveData({required data}) async {}

  Future<Either<Exception, NSBlock>> parseBlock(
      {required BSBlock block}) async {
    logger.i('${block.id} height: ${block.height}');

    final transactionsResult = await getBlockTransactions(block: block);
    final bsTransactionList = transactionsResult.match((l) {
      logger.e(l);
    }, (r) => r);

    if (bsTransactionList?.transactions == null) {
      // if empty transaction list
      logger.w('Tx is empty in block ${block.height}');
      return Right(NSBlock.empty(blockHeight: block.height!));
    }

    final txCount = bsTransactionList!.transactions!.length;
    var pegInCount = 0;
    var pegInVolume = 0;
    var pegOutCount = 0;
    var pegOutVolume = 0;

    var swapCount = 0;

    for (var transaction in bsTransactionList.transactions!) {
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
              'PegIn found in $vinCounter vin. Tx ${transaction.txid} in block ${block.height}');
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
              'PegOut found in $voutCounter vout. Tx ${transaction.txid} in block ${block.height}');
          pegOutCount = pegOutCount + 1;
          pegOutVolume = pegOutVolume + vout.value!;
        }
        voutCounter = voutCounter + 1;
      }

      if (transaction.vin!.length >= 2 && transaction.vout!.length >= 4) {
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
      logger.i('Special block info:');
      logger.i(nsblock.toJson());
    }

    return Right(nsblock);
  }

  Future<Either<Exception, BSBlockTransactions>> getBlockTransactions(
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

  Future<Either<Exception, BSBlocks>> getBlocks(
      {required int startBlock}) async {
    final client = RetryClient(http.Client(), whenError: whenError);

    // api returns list of 10 blocks from blockheight-10 to blockheight
    final startBlockHeight = startBlock + 10;

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

  Future<Either<Exception, int>> getStartBlockHeight() async {
    final currentBlockHeightResult = await getApiBlockHeight();

    final currentBlockHeight = currentBlockHeightResult.match((l) {
      logger.e(l);
    }, (r) => r);

    if (currentBlockHeight == null) {
      return Left(Exception('Unable to get start block'));
    }

    final dbBlockHeightResult =
        await getDbBlockHeight(apiBlockHeight: currentBlockHeight);
    final dbBlockHeight = dbBlockHeightResult.match((l) {
      logger.e(l);
      return currentBlockHeight - maxBlocks;
    }, (r) => r);

    return Right(dbBlockHeight);
  }

  Future<Either<Exception, int>> getApiBlockHeight() async {
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

  Future<Either<Exception, int>> getDbBlockHeight(
      {required int apiBlockHeight}) async {
    final blocksCount = await isar.nSBlocks.count();

    if (blocksCount == 0) {
      return Left(Exception('Blocks table is empty'));
    }

    // TODO:
    // if blocksCount > maxBlocks
    // delete old blocks

    final highestBlockHeight =
        await isar.nSBlocks.where(sort: Sort.desc).anyBlockHeight().findFirst();

    if (highestBlockHeight?.blockHeight == null) {
      return Left(Exception('Block height is empty'));
    }

    return Right(highestBlockHeight?.blockHeight ?? 0);
  }
}
