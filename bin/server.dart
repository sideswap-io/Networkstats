import 'dart:io';

import 'package:isar/isar.dart';
import 'package:network_stats/models/network_stats.dart';
import 'package:network_stats/stats_frontend.dart';
import 'package:network_stats/provider.dart';
import 'package:network_stats/utils/custom_logger.dart';
import 'package:network_stats/utils/logger_middleware.dart';
import 'package:network_stats/web_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';

void main(List<String> args) async {
  final container = ProviderContainer();

  await Isar.initializeIsarCore(download: true);

  final isar = await Isar.open(
    [
      NetworkStatsSchema,
      NSBlockSchema,
    ],
    directory: "data/",
    inspector: false,
  );

  final networkStats =
      await isar.networkStats.where().findFirst() ?? NetworkStats();

  Stream<void> networkStatesChanged =
      isar.networkStats.watchObject(networkStats.id);
  networkStatesChanged.listen((_) async {
    container.read(networkStatsProvider.notifier).state = networkStats;

    logger.i('NetworkStates changed: ${networkStats.toJson()}');
  });

  final webService = WebService(container);

  // Use any available host or container IP (usually `0.0.0.0`).
  final ip = InternetAddress.anyIPv4;

  // Configure a pipeline that logs requests.
  final handler = Pipeline()
      .addMiddleware(customLogRequests())
      .addHandler(webService.handler);

  // For running in containers, we respect the PORT environment variable.
  final port = int.parse(Platform.environment['PORT'] ?? '8081');
  final server = await serve(handler, ip, port);
  server.autoCompress = true;
  logger.i('Server listening on port ${server.port}');

  final frontend = StatsFrontend();
  await frontend.init();
  frontend.startBackend();

  ProcessSignal.sigint.watch().listen((event) {
    logger.i("Exiting main thread.");
    frontend.destroy();
    isar.close();
    logger.i("Main thread done.");
    exit(0);
  });
}
