import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:network_stats/models/blockstream_api.dart';
import 'package:network_stats/utils/configuration.dart';
import 'package:network_stats/utils/custom_logger.dart';

class AssetRegistry {
  Future<void> scrape() async {
    while (true) {
      final queryParameters = {
        'start_index': '0',
        'limit': '1',
      };

      Uri uri = Uri.parse('${Configuration.liquid}/assets/registry');
      uri = uri.replace(queryParameters: queryParameters);

      final response = await http.get(uri);
      logger.i(response.statusCode);
      logger.i(response.headers);

      try {
        final json = jsonDecode(response.body);
        final registry = BSRegistry.fromJson({'assets': json});
        logger.i(registry);
      } catch (e) {
        logger.e(e);
      }
      break;
    }
  }
}
