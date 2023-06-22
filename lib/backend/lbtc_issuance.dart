import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:isar/isar.dart';
import 'package:network_stats/backend/explora_api_interface.dart';
import 'package:network_stats/models/blockstream_api.dart';
import 'package:network_stats/models/network_stats.dart';
import 'package:network_stats/utils/configuration.dart';
import 'package:network_stats/utils/custom_logger.dart';

class LbtcIssuance extends EsploraApiInterface
    implements BaseEsploraApiInterface {
  LbtcIssuance(super.isar);

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

  @override
  Future<void> saveData({required data}) async {
    if (data is! BSAsset) {
      return;
    }

    final asset = data;

    try {
      var networkStats =
          await isar.networkStats.where().findFirst() ?? NetworkStats();

      if (networkStats.lbtcIssuance == null) {
        networkStats.lbtcIssuance = NSLBTCIssuance();
      }

      final pegInAmount = asset.chainStats?.pegInAmount ?? 0;
      final pegInCount = asset.chainStats?.pegInCount ?? 0;
      final pegOutAmount = asset.chainStats?.pegOutAmount ?? 0;
      final burnAmount = asset.chainStats?.burnedAmount ?? 0;
      final burnCount = asset.chainStats?.burnCount ?? 0;

      // Peg-out/Burned = peg_out_amount +  burned_amount (peg_in_count + burned_count)
      final burnedAmount = pegOutAmount + burnAmount * (pegInCount + burnCount);

      // Circulating amount = peg_in_amount - peg_out_amount - burned_amount
      final circulatingAmount = pegInAmount - pegOutAmount - burnAmount;

      // Issued amount = peg_in_amount (peg_in_count)
      final issuedAmount = pegInAmount * pegInCount;

      networkStats.lbtcIssuance?.issuedAmount = issuedAmount;
      networkStats.lbtcIssuance?.burnedAmount = burnedAmount;
      networkStats.lbtcIssuance?.circulatingAmount = circulatingAmount;
      networkStats.id = 0;

      logger.i(networkStats.toJson());

      await isar.writeTxn(() async {
        await isar.networkStats.put(networkStats);
      });

      logger.i('${this.runtimeType} done');
    } catch (e) {
      logger.e(e);
    }
  }
}
