import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'network_stats.g.dart';

@JsonSerializable()
@Collection()
class NetworkStats {
  Id id = Isar.autoIncrement;
  NSLBTCIssuance? lbtcIssuance;
  NSNetwork? network;
  NSPegIn? pegIn;
  NSPegOut? pegOut;
  NSTransactions? transactions;
  NSSwaps? swaps;

  NetworkStats({
    this.id = Isar.autoIncrement,
    this.lbtcIssuance,
    this.network,
    this.pegIn,
    this.pegOut,
    this.transactions,
    this.swaps,
  });

  factory NetworkStats.fromJson(Map<String, dynamic> json) =>
      _$NetworkStatsFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkStatsToJson(this);

  @override
  String toString() {
    return 'NetworkStats(id: $id, lbtcIssuance: $lbtcIssuance, network: $network, pegIn: $pegIn, pegOut: $pegOut, transactions: $transactions, swaps: $swaps)';
  }
}

@JsonSerializable()
@Embedded()
class NSLBTCIssuance {
  int? circulatingAmount;
  int? issuedAmount;
  int? burnedAmount;

  NSLBTCIssuance({
    this.circulatingAmount,
    this.issuedAmount,
    this.burnedAmount,
  });

  factory NSLBTCIssuance.fromJson(Map<String, dynamic> json) =>
      _$NSLBTCIssuanceFromJson(json);

  Map<String, dynamic> toJson() => _$NSLBTCIssuanceToJson(this);

  @override
  String toString() =>
      'NSLBTCIssuance(circulatingAmount: $circulatingAmount, issuedAmount: $issuedAmount, burnedAmount: $burnedAmount)';
}

@JsonSerializable()
@Embedded()
class NSNetwork {
  int? currentBlockHeight;
  int? issuedAssets;
  int? issuedSecurities;

  NSNetwork({
    this.currentBlockHeight,
    this.issuedAssets,
    this.issuedSecurities,
  });

  factory NSNetwork.fromJson(Map<String, dynamic> json) =>
      _$NSNetworkFromJson(json);

  Map<String, dynamic> toJson() => _$NSNetworkToJson(this);

  @override
  String toString() =>
      'NSNetwork(currentBlockHeight: $currentBlockHeight, issuedAssets: $issuedAssets, issuedSecurities: $issuedSecurities)';
}

@JsonSerializable()
@Embedded()
class NSPegIn {
  int? pegInVolume24h;
  int? pegInVolume30d;
  int? pegInVolume1y;

  NSPegIn({
    this.pegInVolume24h,
    this.pegInVolume30d,
    this.pegInVolume1y,
  });

  factory NSPegIn.fromJson(Map<String, dynamic> json) =>
      _$NSPegInFromJson(json);

  Map<String, dynamic> toJson() => _$NSPegInToJson(this);

  @override
  String toString() =>
      'NSPegIn(pegInVolume24h: $pegInVolume24h, pegInVolume30d: $pegInVolume30d, pegInVolume1y: $pegInVolume1y)';
}

@JsonSerializable()
@Embedded()
class NSPegOut {
  int? pegOutVolume24h;
  int? pegOutVolume30d;
  int? pegOutVolume1y;

  NSPegOut({
    this.pegOutVolume24h,
    this.pegOutVolume30d,
    this.pegOutVolume1y,
  });

  factory NSPegOut.fromJson(Map<String, dynamic> json) =>
      _$NSPegOutFromJson(json);

  Map<String, dynamic> toJson() => _$NSPegOutToJson(this);

  @override
  String toString() =>
      'NSPegOut(pegOutVolume24h: $pegOutVolume24h, pegOutVolume30d: $pegOutVolume30d, pegOutVolume1y: $pegOutVolume1y)';
}

@JsonSerializable()
@Embedded()
class NSTransactions {
  int? txCount24h;
  int? txCount30d;
  int? txCount1y;

  NSTransactions({
    this.txCount24h,
    this.txCount30d,
    this.txCount1y,
  });

  factory NSTransactions.fromJson(Map<String, dynamic> json) =>
      _$NSTransactionsFromJson(json);

  Map<String, dynamic> toJson() => _$NSTransactionsToJson(this);

  @override
  String toString() =>
      'NSTransactions(txCount24h: $txCount24h, txCount30d: $txCount30d, txCount1y: $txCount1y)';
}

@JsonSerializable()
@Embedded()
class NSSwaps {
  int? swapVolume24h;
  int? swapVolume30d;
  int? swapVolume1y;

  NSSwaps({
    this.swapVolume24h,
    this.swapVolume30d,
    this.swapVolume1y,
  });

  factory NSSwaps.fromJson(Map<String, dynamic> json) =>
      _$NSSwapsFromJson(json);

  Map<String, dynamic> toJson() => _$NSSwapsToJson(this);

  @override
  String toString() =>
      'NSSwaps(swapVolume24h: $swapVolume24h, swapVolume30d: $swapVolume30d, swapVolume1y: $swapVolume1y)';
}

@JsonSerializable()
@Collection()
class NSBlock {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  int? blockHeight;

  String? blockHash;
  int? txCount;
  int? pegInCount;
  int? pegInVolume;
  int? pegOutCount;
  int? pegOutVolume;
  int? burnCount;
  int? burnVolume;
  int? swapCount;

  NSBlock({
    this.id = Isar.autoIncrement,
    this.blockHash,
    this.blockHeight,
    this.txCount,
    this.pegInCount,
    this.pegInVolume,
    this.pegOutCount,
    this.pegOutVolume,
    this.burnCount,
    this.burnVolume,
    this.swapCount,
  });

  factory NSBlock.empty({required int blockHeight}) {
    return NSBlock(
      blockHeight: blockHeight,
      blockHash: '',
      txCount: 0,
      pegInCount: 0,
      pegInVolume: 0,
      pegOutCount: 0,
      pegOutVolume: 0,
      burnCount: 0,
      burnVolume: 0,
      swapCount: 0,
    );
  }

  bool get isEmpty {
    return txCount == 0 &&
        blockHash == '' &&
        pegInCount == 0 &&
        pegInVolume == 0 &&
        pegOutCount == 0 &&
        pegOutVolume == 0 &&
        burnCount == 0 &&
        burnVolume == 0 &&
        swapCount == 0;
  }

  factory NSBlock.fromJson(Map<String, dynamic> json) =>
      _$NSBlockFromJson(json);

  Map<String, dynamic> toJson() => _$NSBlockToJson(this);

  @override
  String toString() {
    return 'NSBlock(id: $id, blockHeight: $blockHeight, blockHash: $blockHash, txCount: $txCount, pegInCount: $pegInCount, pegInVolume: $pegInVolume, pegOutCount: $pegOutCount, pegOutVolume: $pegOutVolume, burnCount: $burnCount, burnVolume: $burnVolume, swapCount: $swapCount)';
  }
}
