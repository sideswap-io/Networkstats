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

  factory NetworkStats.empty() {
    return NetworkStats(
      lbtcIssuance: NSLBTCIssuance.empty(),
      network: NSNetwork.empty(),
      pegIn: NSPegIn.empty(),
      pegOut: NSPegOut.empty(),
      transactions: NSTransactions.empty(),
      swaps: NSSwaps.empty(),
    );
  }

  factory NetworkStats.fromJson(Map<String, dynamic> json) =>
      _$NetworkStatsFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkStatsToJson(this);

  @override
  String toString() {
    return 'NetworkStats(id: $id, lbtcIssuance: $lbtcIssuance, network: $network, pegIn: $pegIn, pegOut: $pegOut, transactions: $transactions, swaps: $swaps)';
  }

  NetworkStats copyWith({
    Id? id,
    NSLBTCIssuance? lbtcIssuance,
    NSNetwork? network,
    NSPegIn? pegIn,
    NSPegOut? pegOut,
    NSTransactions? transactions,
    NSSwaps? swaps,
  }) {
    return NetworkStats(
      id: id ?? this.id,
      lbtcIssuance: lbtcIssuance ?? this.lbtcIssuance,
      network: network ?? this.network,
      pegIn: pegIn ?? this.pegIn,
      pegOut: pegOut ?? this.pegOut,
      transactions: transactions ?? this.transactions,
      swaps: swaps ?? this.swaps,
    );
  }
}

@JsonSerializable()
@Embedded()
class NSLBTCIssuance {
  int? circulatingAmount;
  int? issuedAmount;
  int? pegoutBurnAmount;

  NSLBTCIssuance({
    this.circulatingAmount = 0,
    this.issuedAmount = 0,
    this.pegoutBurnAmount = 0,
  });

  factory NSLBTCIssuance.empty() => NSLBTCIssuance(
      circulatingAmount: 0, issuedAmount: 0, pegoutBurnAmount: 0);

  factory NSLBTCIssuance.fromJson(Map<String, dynamic> json) =>
      _$NSLBTCIssuanceFromJson(json);

  Map<String, dynamic> toJson() => _$NSLBTCIssuanceToJson(this);

  @override
  String toString() =>
      'NSLBTCIssuance(circulatingAmount: $circulatingAmount, issuedAmount: $issuedAmount, burnedAmount: $pegoutBurnAmount)';

  NSLBTCIssuance copyWith({
    int? circulatingAmount,
    int? issuedAmount,
    int? pegoutBurnAmount,
  }) {
    return NSLBTCIssuance(
      circulatingAmount: circulatingAmount ?? this.circulatingAmount,
      issuedAmount: issuedAmount ?? this.issuedAmount,
      pegoutBurnAmount: pegoutBurnAmount ?? this.pegoutBurnAmount,
    );
  }
}

@JsonSerializable()
@Embedded()
class NSNetwork {
  int? currentBlockHeight;
  int? issuedAssets;
  int? issuedSecurities;

  NSNetwork({
    this.currentBlockHeight = 0,
    this.issuedAssets = 0,
    this.issuedSecurities = 0,
  });

  factory NSNetwork.empty() =>
      NSNetwork(currentBlockHeight: 0, issuedAssets: 0, issuedSecurities: 0);

  factory NSNetwork.fromJson(Map<String, dynamic> json) =>
      _$NSNetworkFromJson(json);

  Map<String, dynamic> toJson() => _$NSNetworkToJson(this);

  @override
  String toString() =>
      'NSNetwork(currentBlockHeight: $currentBlockHeight, issuedAssets: $issuedAssets, issuedSecurities: $issuedSecurities)';

  NSNetwork copyWith({
    int? currentBlockHeight,
    int? issuedAssets,
    int? issuedSecurities,
  }) {
    return NSNetwork(
      currentBlockHeight: currentBlockHeight ?? this.currentBlockHeight,
      issuedAssets: issuedAssets ?? this.issuedAssets,
      issuedSecurities: issuedSecurities ?? this.issuedSecurities,
    );
  }
}

@JsonSerializable()
@Embedded()
class NSPegIn {
  int? pegInVolume24h;
  int? pegInCount24h;
  int? pegInVolume30d;
  int? pegInCount30d;
  int? pegInVolume1y;
  int? pegInCount1y;

  NSPegIn({
    this.pegInVolume24h = 0,
    this.pegInCount24h = 0,
    this.pegInVolume30d = 0,
    this.pegInCount30d = 0,
    this.pegInVolume1y = 0,
    this.pegInCount1y = 0,
  });

  factory NSPegIn.empty() => NSPegIn(
        pegInVolume24h: 0,
        pegInCount24h: 0,
        pegInVolume30d: 0,
        pegInCount30d: 0,
        pegInVolume1y: 0,
        pegInCount1y: 0,
      );

  factory NSPegIn.fromJson(Map<String, dynamic> json) =>
      _$NSPegInFromJson(json);

  Map<String, dynamic> toJson() => _$NSPegInToJson(this);

  @override
  String toString() {
    return 'NSPegIn(pegInVolume24h: $pegInVolume24h, pegInCount24h: $pegInCount24h, pegInVolume30d: $pegInVolume30d, pegInCount30d: $pegInCount30d, pegInVolume1y: $pegInVolume1y, pegInCount1y: $pegInCount1y)';
  }

  NSPegIn copyWith({
    int? pegInVolume24h,
    int? pegInCount24h,
    int? pegInVolume30d,
    int? pegInCount30d,
    int? pegInVolume1y,
    int? pegInCount1y,
  }) {
    return NSPegIn(
      pegInVolume24h: pegInVolume24h ?? this.pegInVolume24h,
      pegInCount24h: pegInCount24h ?? this.pegInCount24h,
      pegInVolume30d: pegInVolume30d ?? this.pegInVolume30d,
      pegInCount30d: pegInCount30d ?? this.pegInCount30d,
      pegInVolume1y: pegInVolume1y ?? this.pegInVolume1y,
      pegInCount1y: pegInCount1y ?? this.pegInCount1y,
    );
  }
}

@JsonSerializable()
@Embedded()
class NSPegOut {
  int? pegOutVolume24h;
  int? pegOutCount24h;
  int? pegOutVolume30d;
  int? pegOutCount30d;
  int? pegOutVolume1y;
  int? pegOutCount1y;

  NSPegOut({
    this.pegOutVolume24h = 0,
    this.pegOutCount24h = 0,
    this.pegOutVolume30d = 0,
    this.pegOutCount30d = 0,
    this.pegOutVolume1y = 0,
    this.pegOutCount1y = 0,
  });

  factory NSPegOut.empty() => NSPegOut(
        pegOutVolume24h: 0,
        pegOutCount24h: 0,
        pegOutVolume30d: 0,
        pegOutCount30d: 0,
        pegOutVolume1y: 0,
        pegOutCount1y: 0,
      );

  factory NSPegOut.fromJson(Map<String, dynamic> json) =>
      _$NSPegOutFromJson(json);

  Map<String, dynamic> toJson() => _$NSPegOutToJson(this);

  @override
  String toString() {
    return 'NSPegOut(pegOutVolume24h: $pegOutVolume24h, pegOutCount24h: $pegOutCount24h, pegOutVolume30d: $pegOutVolume30d, pegOutCount30d: $pegOutCount30d, pegOutVolume1y: $pegOutVolume1y, pegOutCount1y: $pegOutCount1y)';
  }

  NSPegOut copyWith({
    int? pegOutVolume24h,
    int? pegOutCount24h,
    int? pegOutVolume30d,
    int? pegOutCount30d,
    int? pegOutVolume1y,
    int? pegOutCount1y,
  }) {
    return NSPegOut(
      pegOutVolume24h: pegOutVolume24h ?? this.pegOutVolume24h,
      pegOutCount24h: pegOutCount24h ?? this.pegOutCount24h,
      pegOutVolume30d: pegOutVolume30d ?? this.pegOutVolume30d,
      pegOutCount30d: pegOutCount30d ?? this.pegOutCount30d,
      pegOutVolume1y: pegOutVolume1y ?? this.pegOutVolume1y,
      pegOutCount1y: pegOutCount1y ?? this.pegOutCount1y,
    );
  }
}

@JsonSerializable()
@Embedded()
class NSTransactions {
  int? txCount24h;
  int? txCount30d;
  int? txCount1y;

  NSTransactions({
    this.txCount24h = 0,
    this.txCount30d = 0,
    this.txCount1y = 0,
  });

  factory NSTransactions.empty() =>
      NSTransactions(txCount24h: 0, txCount30d: 0, txCount1y: 0);

  factory NSTransactions.fromJson(Map<String, dynamic> json) =>
      _$NSTransactionsFromJson(json);

  Map<String, dynamic> toJson() => _$NSTransactionsToJson(this);

  @override
  String toString() =>
      'NSTransactions(txCount24h: $txCount24h, txCount30d: $txCount30d, txCount1y: $txCount1y)';

  NSTransactions copyWith({
    int? txCount24h,
    int? txCount30d,
    int? txCount1y,
  }) {
    return NSTransactions(
      txCount24h: txCount24h ?? this.txCount24h,
      txCount30d: txCount30d ?? this.txCount30d,
      txCount1y: txCount1y ?? this.txCount1y,
    );
  }
}

@JsonSerializable()
@Embedded()
class NSSwaps {
  int? swapCount24h;
  int? swapCount30d;
  int? swapCount1y;

  NSSwaps({
    this.swapCount24h = 0,
    this.swapCount30d = 0,
    this.swapCount1y = 0,
  });

  factory NSSwaps.empty() =>
      NSSwaps(swapCount24h: 0, swapCount30d: 0, swapCount1y: 0);

  factory NSSwaps.fromJson(Map<String, dynamic> json) =>
      _$NSSwapsFromJson(json);

  Map<String, dynamic> toJson() => _$NSSwapsToJson(this);

  @override
  String toString() =>
      'NSSwaps(swapVolume24h: $swapCount24h, swapVolume30d: $swapCount30d, swapVolume1y: $swapCount1y)';

  NSSwaps copyWith({
    int? swapCount24h,
    int? swapCount30d,
    int? swapCount1y,
  }) {
    return NSSwaps(
      swapCount24h: swapCount24h ?? this.swapCount24h,
      swapCount30d: swapCount30d ?? this.swapCount30d,
      swapCount1y: swapCount1y ?? this.swapCount1y,
    );
  }
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
