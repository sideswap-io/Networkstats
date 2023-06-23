import 'package:isar/isar.dart';
import 'package:network_stats/models/network_stats.dart';
import 'package:network_stats/utils/custom_logger.dart';

Future<void> withIsar(Future<void> Function(Isar isar) fn) async {
  Isar? _isar;
  try {
    logger.i('[Isar] opening');
    await Isar.initializeIsarCore(download: true);

    _isar = await Isar.open(
      [
        NetworkStatsSchema,
        NSBlockSchema,
      ],
      directory: "data/",
      inspector: false,
    );

    await fn(_isar);
  } catch (e, s) {
    logger.e('[Isar] $e $s');
  } finally {
    final closed = await _isar?.close();
    if (closed != null && closed == true) {
      logger.i('[Isar] closed');
    }
  }
}
