import 'package:isar/isar.dart';
import 'package:network_stats/utils/custom_logger.dart';

abstract class BaseEsploraApiInterface {
  Future<void> scrape();
  Future<bool> whenError(Object object, StackTrace stackTrace);
  Future<void> saveData({required dynamic data});
}

class EsploraApiInterface implements BaseEsploraApiInterface {
  final Isar isar;

  EsploraApiInterface(this.isar);

  @override
  Future<bool> whenError(Object object, StackTrace stackTrace) async {
    logger.e(object);
    logger.e(stackTrace);
    return true;
  }

  @override
  Future<void> saveData({required data}) {
    throw UnimplementedError();
  }

  @override
  Future<void> scrape() {
    throw UnimplementedError();
  }
}
