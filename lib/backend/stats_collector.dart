import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:isar/isar.dart';
import 'package:network_stats/backend/explora_api_interface.dart';
import 'package:network_stats/models/network_stats.dart';
import 'package:network_stats/utils/configuration.dart';
import 'package:network_stats/utils/custom_logger.dart';

class StatsCollector extends EsploraApiInterface
    implements BaseEsploraApiInterface {
  StatsCollector(super.isar);

  Future<void> run() async {
    final stopwatch = Stopwatch()..start();
    await _checkEmbeddedStats();

    final totalBlocks = await isar.nSBlocks.count();
    logger.i('Collecting stats for ${totalBlocks} blocks');

    await _updateCurrentBlockHeight();

    if (totalBlocks >= Configuration.dayBlocks) {
      // ~0.2 second
      await _make24hStats();
      logger.i('24h stats generated');
    }

    if (totalBlocks >= Configuration.monthBlocks) {
      // ~6 seconds
      await _make30dStats();
      logger.i('30d stats generated');
    }

    if (totalBlocks >= Configuration.yearBlocks) {
      // ~70 seconds
      await _make1yStats();
      logger.i('1y stats generated');
    }

    logger.i('Done. Collecting stats took ${stopwatch.elapsed}');
  }

  Future<void> _updateCurrentBlockHeight() async {
    final client = RetryClient(http.Client(), whenError: whenError);

    try {
      Uri uri = Uri.parse('${Configuration.liquid}/blocks/tip/height');

      final response = await client.get(uri);
      final statusCode = response.statusCode;

      if (statusCode >= 200 && statusCode < 300) {
        try {
          final currentBlockHeight = int.tryParse(response.body);
          if (currentBlockHeight == null) {
            logger.e('Unable to retrive current block height');
          }
          await isar.writeTxn(() async {
            final networkStats =
                await isar.networkStats.where().findFirst() ?? NetworkStats();
            networkStats.network?.currentBlockHeight = currentBlockHeight;
            await isar.networkStats.put(networkStats);
          });
          logger.i('Current block height updated: $currentBlockHeight');
        } catch (e, st) {
          logger.e(e);
          logger.e(st);
        }
      } else {
        logger.e('Error code: $statusCode reason: ${response.reasonPhrase}');
      }
    } catch (e, st) {
      logger.e(e);
      logger.e(st);
    } finally {
      client.close();
    }
  }

  Future<void> _checkEmbeddedStats() async {
    final networkStats =
        await isar.networkStats.where().findFirst() ?? NetworkStats();

    if (networkStats.network == null) {
      networkStats.network = NSNetwork();
    }

    if (networkStats.pegIn == null) {
      networkStats.pegIn = NSPegIn();
    }

    if (networkStats.pegOut == null) {
      networkStats.pegOut = NSPegOut();
    }

    if (networkStats.transactions == null) {
      networkStats.transactions = NSTransactions();
    }

    if (networkStats.swaps == null) {
      networkStats.swaps = NSSwaps();
    }

    await isar.writeTxn(() async {
      await isar.networkStats.put(networkStats);
    });
  }

  Future<void> _make24hStats() async {
    final blocks = await isar.nSBlocks
        .where(sort: Sort.desc)
        .anyBlockHeight()
        .limit(Configuration.dayBlocks)
        .findAll();

    var pegInVolume24h = 0;
    var pegOutVolume24h = 0;
    var txCount24h = 0;
    var swap24h = 0;

    for (var block in blocks) {
      pegInVolume24h = pegInVolume24h + (block.pegInVolume ?? 0);
      pegOutVolume24h = pegOutVolume24h + (block.pegOutVolume ?? 0);
      txCount24h = txCount24h + (block.txCount ?? 0);
      swap24h = swap24h + (block.swapCount ?? 0);
    }

    final networkStats =
        await isar.networkStats.where().findFirst() ?? NetworkStats();

    networkStats.pegIn!.pegInVolume24h = pegInVolume24h;
    networkStats.pegOut!.pegOutVolume24h = pegOutVolume24h;
    networkStats.transactions!.txCount24h = txCount24h;
    networkStats.swaps!.swapCount24h = swap24h;

    await isar.writeTxn(() async {
      await isar.networkStats.put(networkStats);
    });
  }

  Future<void> _make30dStats() async {
    final blocks = await isar.nSBlocks
        .where(sort: Sort.desc)
        .anyBlockHeight()
        .limit(Configuration.monthBlocks)
        .findAll();

    var pegInVolume30d = .0;
    var pegOutVolume30d = .0;
    var txCount30d = .0;
    var swapCount30d = .0;

    for (var block in blocks) {
      pegInVolume30d = pegInVolume30d + (block.pegInVolume ?? 0);
      pegOutVolume30d = pegOutVolume30d + (block.pegOutVolume ?? 0);
      txCount30d = txCount30d + (block.txCount ?? 0);
      swapCount30d = swapCount30d + (block.swapCount ?? 0);
    }

    final networkStats =
        await isar.networkStats.where().findFirst() ?? NetworkStats();

    networkStats.pegIn!.pegInVolume30d =
        pegInVolume30d / Configuration.daysInMonth;
    networkStats.pegOut!.pegOutVolume30d =
        pegOutVolume30d / Configuration.daysInMonth;
    networkStats.transactions!.txCount30d =
        txCount30d / Configuration.daysInMonth;
    networkStats.swaps!.swapCount30d = swapCount30d / Configuration.daysInMonth;

    await isar.writeTxn(() async {
      await isar.networkStats.put(networkStats);
    });
  }

  Future<void> _make1yStats() async {
    final blocks = await isar.nSBlocks
        .where(sort: Sort.desc)
        .anyBlockHeight()
        .limit(Configuration.yearBlocks)
        .findAll();

    var pegInVolume1y = .0;
    var pegOutVolume1y = .0;
    var txCount1y = .0;
    var swapCount1y = .0;

    for (var block in blocks) {
      pegInVolume1y = pegInVolume1y + (block.pegInVolume ?? 0);
      pegOutVolume1y = pegOutVolume1y + (block.pegOutVolume ?? 0);
      txCount1y = txCount1y + (block.txCount ?? 0);
      swapCount1y = swapCount1y + (block.swapCount ?? 0);
    }

    final networkStats =
        await isar.networkStats.where().findFirst() ?? NetworkStats();

    networkStats.pegIn!.pegInVolume1y =
        pegInVolume1y / Configuration.daysInYear;
    networkStats.pegOut!.pegOutVolume1y =
        pegOutVolume1y / Configuration.daysInYear;
    networkStats.transactions!.txCount1y = txCount1y / Configuration.daysInYear;
    networkStats.swaps!.swapCount1y = swapCount1y / Configuration.daysInYear;

    await isar.writeTxn(() async {
      await isar.networkStats.put(networkStats);
    });
  }
}
