import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

import 'package:network_stats/backend/explora_api_interface.dart';
import 'package:network_stats/models/blockstream_api.dart';
import 'package:network_stats/utils/configuration.dart';
import 'package:network_stats/utils/custom_logger.dart';

class BlockApi extends EsploraApiInterface implements BaseEsploraApiInterface {
  BlockApi(super.isar);

  Future<void> scrape() async {
    final client = RetryClient(http.Client(), whenError: whenError);

    try {
      logger.i('Gathering L-BTC issuance');
      Uri uri = Uri.parse(
          '${Configuration.liquid}/asset/6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d');

      final response = await client.get(uri);
      final statusCode = response.statusCode;

      if (statusCode >= 200 && statusCode < 300) {
        try {
          final json = jsonDecode(response.body) as Map<String, dynamic>;
          final asset = BSAsset.fromJson(json);
          await saveData(data: asset);
        } catch (e) {
          logger.e(e);
        }
      } else {
        logger.e('Error code: $statusCode reason: ${response.reasonPhrase}');
      }
    } catch (e) {
      logger.e(e);
    } finally {
      client.close();
    }
  }

  Future<void> saveData({required data}) async {}
}
