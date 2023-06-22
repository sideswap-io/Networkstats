import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'network_stats.g.dart';

@JsonSerializable()
@Collection()
class NetworkStats {
  NetworkStats({
    this.id = Isar.autoIncrement,
    this.lbtcIssuance,
    this.network,
    this.pegIn,
    this.pegOut,
    this.transactions,
    this.swaps,
  });

  Id id = Isar.autoIncrement;
  NSLBTCIssuance? lbtcIssuance;
  NSNetwork? network;
  NSPegIn? pegIn;
  NSPegOut? pegOut;
  NSTransactions? transactions;
  NSSwaps? swaps;

  factory NetworkStats.fromJson(Map<String, dynamic> json) =>
      _$NetworkStatsFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkStatsToJson(this);
}

@JsonSerializable()
@Embedded()
class NSLBTCIssuance {
  NSLBTCIssuance({
    this.circulatingAmount,
    this.issuedAmount,
    this.burnedAmount,
  });

  int? circulatingAmount;
  int? issuedAmount;
  int? burnedAmount;

  factory NSLBTCIssuance.fromJson(Map<String, dynamic> json) =>
      _$NSLBTCIssuanceFromJson(json);

  Map<String, dynamic> toJson() => _$NSLBTCIssuanceToJson(this);
}

@JsonSerializable()
@Embedded()
class NSNetwork {
  NSNetwork({
    this.currentBlockHeight,
    this.issuedAssets,
    this.issuedSecurities,
  });

  int? currentBlockHeight;
  int? issuedAssets;
  int? issuedSecurities;

  factory NSNetwork.fromJson(Map<String, dynamic> json) =>
      _$NSNetworkFromJson(json);

  Map<String, dynamic> toJson() => _$NSNetworkToJson(this);
}

@JsonSerializable()
@Embedded()
class NSPegIn {
  NSPegIn({
    this.pegInVolume24h,
    this.pegInVolume30d,
    this.pegInVolume1y,
  });

  int? pegInVolume24h;
  int? pegInVolume30d;
  int? pegInVolume1y;

  factory NSPegIn.fromJson(Map<String, dynamic> json) =>
      _$NSPegInFromJson(json);

  Map<String, dynamic> toJson() => _$NSPegInToJson(this);
}

@JsonSerializable()
@Embedded()
class NSPegOut {
  NSPegOut({
    this.pegOutVolume24h,
    this.pegOutVolume30d,
    this.pegOutVolume1y,
  });

  int? pegOutVolume24h;
  int? pegOutVolume30d;
  int? pegOutVolume1y;

  factory NSPegOut.fromJson(Map<String, dynamic> json) =>
      _$NSPegOutFromJson(json);

  Map<String, dynamic> toJson() => _$NSPegOutToJson(this);
}

@JsonSerializable()
@Embedded()
class NSTransactions {
  NSTransactions({
    this.txCount24h,
    this.txCount30d,
    this.txCount1y,
  });

  int? txCount24h;
  int? txCount30d;
  int? txCount1y;

  factory NSTransactions.fromJson(Map<String, dynamic> json) =>
      _$NSTransactionsFromJson(json);

  Map<String, dynamic> toJson() => _$NSTransactionsToJson(this);
}

@JsonSerializable()
@Embedded()
class NSSwaps {
  NSSwaps({
    this.swapVolume24h,
    this.swapVolume30d,
    this.swapVolume1y,
  });

  int? swapVolume24h;
  int? swapVolume30d;
  int? swapVolume1y;

  factory NSSwaps.fromJson(Map<String, dynamic> json) =>
      _$NSSwapsFromJson(json);

  Map<String, dynamic> toJson() => _$NSSwapsToJson(this);
}
