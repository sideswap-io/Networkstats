import 'dart:io';

import 'package:isar/isar.dart';
import 'package:isolator/isolator.dart';
import 'package:neat_periodic_task/neat_periodic_task.dart';
import 'package:network_stats/backend/block_api.dart';
import 'package:network_stats/backend/lbtc_issuance.dart';
import 'package:network_stats/event.dart';
import 'package:network_stats/models/network_stats.dart';
import 'package:network_stats/utils/custom_logger.dart';
import 'package:network_stats/utils/isar_helpers.dart';

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
      [NetworkStatsSchema],
      directory: "data/",
      inspector: false,
    );

    await _run(isar);
  }

  Future<void> _run(Isar isar) async {
    logger.i('Running backend service');

    final lbtcIssuance = LbtcIssuance(isar);

    final blockScheduler = NeatPeriodicTaskScheduler(
      interval: Duration(seconds: 10),
      name: 'block-api',
      timeout: Duration(seconds: 5),
      task: () async {
        logger.i('Executing block');
      },
      minCycle: Duration(milliseconds: 150),
    );

    final lbtcIssuanceScheduler = NeatPeriodicTaskScheduler(
      interval: Duration(seconds: 60),
      name: 'lbtc-issuance-api',
      timeout: Duration(seconds: 5),
      task: () async {
        await lbtcIssuance.scrape();
      },
      minCycle: Duration(milliseconds: 150),
    );

    blockScheduler.start();
    lbtcIssuanceScheduler.start();

    ProcessSignal.sigint.watch().listen((event) async {
      logger.i("Exiting backend service.");
      await blockScheduler.stop();
      await lbtcIssuanceScheduler.stop();
      await isar.close();
      logger.i("Backend service done.");
    });

    // var now = DateTime.now();
    // while (true) {
    //   while (true) {
    //     var currentTime = DateTime.now();
    //     final diffTime = currentTime.difference(now);
    //     if (diffTime.inSeconds >= 10) {
    //       break;
    //     }

    //     logger.i('Executing block: ${diffTime.inMilliseconds}');

    //     // final blockApi = BlockApi(isar);
    //     // await blockApi.scrape();

    //     await Future.delayed(Duration(milliseconds: 300));
    //   }

    //   logger.i('Executing lbtc issuance');
    //   // final lbtcIssuance = LbtcIssuance(isar);
    //   // await lbtcIssuance.scrape();

    //   now = DateTime.now();
    //   await Future.delayed(Duration(seconds: 1));
    // }

    // // final assetRegistry = AssetRegistry();
    // // await assetRegistry.scrape();
  }
}
