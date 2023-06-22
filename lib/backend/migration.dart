import 'package:isar/isar.dart';
import 'package:network_stats/models/network_stats.dart';
import 'package:network_stats/utils/custom_logger.dart';

class IsarMigration {
  final Isar isar;

  IsarMigration(this.isar);

  Future<void> migrate() async {
    logger.i("Perform migration");
    await _networkStatsMigration();
    logger.i("Migration done.");
  }

  Future<void> _networkStatsMigration() async {
    final networkStatsCount = await isar.networkStats.count();

    for (var i = 0; i < networkStatsCount; i += 50) {
      final networkStats =
          await isar.networkStats.where().offset(i).limit(50).findAll();
      await isar.writeTxn(() async {
        await isar.networkStats.putAll(networkStats);
      });
    }
  }
}
