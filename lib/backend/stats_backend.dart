import 'dart:io';

import 'package:collection/collection.dart';
import 'package:isar/isar.dart';
import 'package:isolator/isolator.dart';
import 'package:neat_periodic_task/neat_periodic_task.dart';
import 'package:network_stats/backend/asset_registry.dart';
import 'package:network_stats/backend/block_api.dart';
import 'package:network_stats/backend/lbtc_issuance.dart';
import 'package:network_stats/backend/stats_collector.dart';
import 'package:network_stats/event.dart';
import 'package:network_stats/models/network_stats.dart';
import 'package:network_stats/utils/custom_logger.dart';

class _StatusStore {
  List<int>? _value;

  NeatStatusProvider provider() => _StatusStoreNeatStatusProvider(this);
}

class _StatusStoreNeatStatusProvider implements NeatStatusProvider {
  final _StatusStore _store;
  List<int>? _lastRead;
  _StatusStoreNeatStatusProvider(this._store);

  @override
  Future<List<int>?> get() async {
    await Future.delayed(Duration(milliseconds: 1));
    _lastRead = _store._value;
    return _lastRead;
  }

  @override
  Future<bool> set(List<int> status) async {
    await Future.delayed(Duration(milliseconds: 1));
    if (_store._value == null ||
        ListEquality().equals(_lastRead, _store._value)) {
      _store._value = status;
      _lastRead = status;
      return true;
    }
    return false;
  }
}

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
    final statusStore = _StatusStore();

    final blockApi = BlockApi(isar);
    final blockScheduler = NeatPeriodicTaskScheduler(
      interval: Duration(minutes: 1),
      name: 'block-api',
      timeout: Duration(minutes: 1),
      status: statusStore.provider(),
      task: () async {
        await blockApi.scrape();
      },
      minCycle: Duration(milliseconds: 150),
    );
    blockScheduler.start();

    final missingBlockScheduler = NeatPeriodicTaskScheduler(
      interval: Duration(hours: 24),
      name: 'missing-block-api',
      timeout: Duration(minutes: 60),
      task: () async {
        await blockApi.scrapeMissingBlocks();
      },
      minCycle: Duration(hours: 1),
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

    // TODO: 24h collector per minute, 30 and 365 per day
    final statsCollector = StatsCollector(isar);
    final statsScheduler = NeatPeriodicTaskScheduler(
      interval: Duration(minutes: 1),
      name: 'stats-scheduler',
      timeout: Duration(minutes: 5),
      task: () async {
        await statsCollector.run();
      },
      minCycle: Duration(milliseconds: 150),
    );
    statsScheduler.start();

    final assetsRegistry = AssetRegistry(isar);
    final assetsRegistryScheduler = NeatPeriodicTaskScheduler(
      name: 'assets-registry',
      interval: Duration(hours: 24),
      timeout: Duration(minutes: 5),
      task: () async {
        await assetsRegistry.scrape();
      },
      minCycle: Duration(milliseconds: 150),
    );
    assetsRegistryScheduler.start();

    ProcessSignal.sigint.watch().listen((event) async {
      logger.i("Exiting backend service.");
      await blockScheduler.stop();
      await missingBlockScheduler.stop();
      await lbtcIssuanceScheduler.stop();
      await statsScheduler.stop();
      await assetsRegistryScheduler.stop();
      await isar.close();
      logger.i("Backend service done.");
    });
  }
}
