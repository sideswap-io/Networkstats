import 'dart:io';

import 'package:isar/isar.dart';
import 'package:isolator/isolator.dart';
import 'package:neat_periodic_task/neat_periodic_task.dart';
import 'package:network_stats/backend/block_api.dart';
import 'package:network_stats/backend/lbtc_issuance.dart';
import 'package:network_stats/backend/stats_collector.dart';
import 'package:network_stats/event.dart';
import 'package:network_stats/models/network_stats.dart';
import 'package:network_stats/utils/custom_logger.dart';

class StatsBackend extends Backend {
  late final Isar isar;

  StatsBackend({required super.argument});

  @override
  void initActions() {
    whenEventCome(Event.startBackend).run(startBackend);
  }

  Future<void> startBackend({required Event event, void data}) async {
    await Isar.initializeIsarCore(download: true);

    isar = await Isar.open(
      [
        NetworkStatsSchema,
        NSBlockSchema,
      ],
      directory: "data/",
      inspector: false,
    );

    await _run(isar);
  }

  Future<void> _run(Isar isar) async {
    logger.i('Running backend service');

    final blockApi = BlockApi(isar);
    final blockScheduler = NeatPeriodicTaskScheduler(
      interval: Duration(seconds: 3),
      name: 'block-api',
      timeout: Duration(seconds: 5),
      task: () async {
        await blockApi.scrape();
      },
      minCycle: Duration(milliseconds: 150),
    );
    blockScheduler.start();

    final missingBlockScheduler = NeatPeriodicTaskScheduler(
      interval: Duration(minutes: 10),
      name: 'missing-block-api',
      timeout: Duration(minutes: 10),
      task: () async {
        await blockApi.scrapeMissingBlocks();
      },
      minCycle: Duration(milliseconds: 150),
    );
    missingBlockScheduler.start();

    final lbtcIssuance = LbtcIssuance(isar);
    final lbtcIssuanceScheduler = NeatPeriodicTaskScheduler(
      interval: Duration(seconds: 60),
      name: 'lbtc-issuance-api',
      timeout: Duration(seconds: 5),
      task: () async {
        await lbtcIssuance.scrape();
      },
      minCycle: Duration(milliseconds: 150),
    );
    lbtcIssuanceScheduler.start();

    final statsCollector = StatsCollector(isar);
    final statsScheduler = NeatPeriodicTaskScheduler(
      interval: Duration(minutes: 1),
      name: 'stats-scheduler',
      timeout: Duration(minutes: 1),
      task: () async {
        await statsCollector.run();
      },
      minCycle: Duration(milliseconds: 150),
    );
    statsScheduler.start();

    ProcessSignal.sigint.watch().listen((event) async {
      logger.i("Exiting backend service.");
      await blockScheduler.stop();
      await missingBlockScheduler.stop();
      await lbtcIssuanceScheduler.stop();
      await statsScheduler.stop();
      await isar.close();
      logger.i("Backend service done.");
    });
  }
}
