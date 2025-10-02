class Configuration {
  static String liquid = 'https://blockstream.info/liquid/api';
  static String apiLbtcAssetInfo =
      'https://blockstream.info/liquid/api/asset/6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d';
  static String lbtcAssetId =
      '6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d';
  static int maxBlocks = 525600;
  static int yearBlocks = maxBlocks;
  static int monthBlocks = 43200;
  static int dayBlocks = 1440;

  static int daysInMonth = 30;
  static int daysInYear = 365;

  // currently hardcoded
  static int issuedSecurities = 30;
}
