import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:isar/isar.dart';
import 'package:network_stats/backend/explora_api_interface.dart';
import 'package:network_stats/models/network_stats.dart';
import 'package:network_stats/utils/configuration.dart';
import 'package:network_stats/utils/custom_logger.dart';

class AssetRegistry extends EsploraApiInterface
    implements BaseEsploraApiInterface {
  AssetRegistry(super.isar);

  Future<void> scrape() async {
    logger.i('Refreshing assets registry');
    final client = RetryClient(http.Client(), whenError: whenError);

    try {
      Uri uri = Uri.parse('https://assets.blockstream.info/');

      final response = await client.get(uri);
      final statusCode = response.statusCode;

      if (statusCode >= 200 && statusCode < 300) {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        final assetsCount = json.keys.length;
        logger.i('Found $assetsCount in registry');

        await isar.writeTxn(() async {
          final existingNetworkStats =
              await isar.networkStats.where().findFirst();
          if (existingNetworkStats == null) {
            return;
          }

          existingNetworkStats.network?.issuedAssets = assetsCount;
          // TODO: fix hardcoded securities
          existingNetworkStats.network?.issuedSecurities =
              Configuration.issuedSecurities;
          await isar.networkStats.put(existingNetworkStats);
        });
      } else {
        logger.e('Error code: $statusCode reason: ${response.reasonPhrase}');
      }
    } catch (e) {
      logger.e(e);
    } finally {
      client.close();
    }
  }
}
