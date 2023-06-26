import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network_stats/utils/custom_logger.dart';

part 'blockstream_api.freezed.dart';
part 'blockstream_api.g.dart';

@freezed
class BSRegistry with _$BSRegistry {
  const factory BSRegistry({
    List<BSAsset>? assets,
  }) = _BSRegistry;

  factory BSRegistry.fromJson(Map<String, dynamic> json) =>
      _$BSRegistryFromJson(json);
}

@freezed
class BSAsset with _$BSAsset {
  const factory BSAsset({
    @JsonKey(name: 'asset_id') String? assetId,
    @JsonKey(name: 'chain_stats') BSAssetStats? chainStats,
    @JsonKey(name: 'mempool_stats') BSAssetStats? mempoolStats,
    @JsonKey(name: 'issuance_txin') BSIssuance? issuanceTxin,
    @JsonKey(name: 'issuance_prevout') BSIssuance? issuancePrevout,
    @JsonKey(name: 'contract_hash') String? contractHash,
    @JsonKey(name: 'reissuance_token') String? reissuanceToken,
    BSStatus? status,
    BSContract? contract,
    BSEntity? entity,
    int? precision,
    String? name,
  }) = _BSAsset;

  factory BSAsset.fromJson(Map<String, dynamic> json) =>
      _$BSAssetFromJson(json);
}

@freezed
class BSAssetStats with _$BSAssetStats {
  const factory BSAssetStats({
    @JsonKey(name: 'tx_count') int? txCount,
    @JsonKey(name: 'peg_in_count') int? pegInCount,
    @JsonKey(name: 'peg_in_amount') int? pegInAmount,
    @JsonKey(name: 'peg_out_count') int? pegOutCount,
    @JsonKey(name: 'peg_out_amount') int? pegOutAmount,
    @JsonKey(name: 'burn_count') int? burnCount,
    @JsonKey(name: 'burned_amount') int? burnedAmount,
    @JsonKey(name: 'issuance_amount') int? issuanceAmount,
    @JsonKey(name: 'issued_amount') int? issuedAmount,
    @JsonKey(name: 'has_blinded_issuance') bool? hasBlindedIssuance,
    @JsonKey(name: 'reissuance_tokens') int? reissuanceTokens,
    @JsonKey(name: 'burned_reissuance_tokens') int? burnedReissuanceTokens,
  }) = _BSAssetStats;

  factory BSAssetStats.fromJson(Map<String, dynamic> json) =>
      _$BSAssetStatsFromJson(json);
}

@freezed
class BSIssuance with _$BSIssuance {
  const factory BSIssuance({
    String? txid,
    int? vin,
  }) = _BSIssuance;

  factory BSIssuance.fromJson(Map<String, dynamic> json) =>
      _$BSIssuanceFromJson(json);
}

@freezed
class BSStatus with _$BSStatus {
  const factory BSStatus({
    bool? confirmed,
    @JsonKey(name: 'block_height') int? blockHeight,
    @JsonKey(name: 'block_hash') String? blockHash,
    @JsonKey(name: 'block_time') int? blockTime,
  }) = _BSStatus;

  factory BSStatus.fromJson(Map<String, dynamic> json) =>
      _$BSStatusFromJson(json);
}

@freezed
class BSEntity with _$BSEntity {
  const factory BSEntity({
    String? domain,
  }) = _BSEntity;

  factory BSEntity.fromJson(Map<String, dynamic> json) =>
      _$BSEntityFromJson(json);
}

@freezed
class BSContract with _$BSContract {
  const factory BSContract({
    BSEntity? entity,
    @JsonKey(name: 'issuer_pubkey') String? issuerPubkey,
    String? name,
    int? precision,
    int? version,
  }) = _BSContract;

  factory BSContract.fromJson(Map<String, dynamic> json) =>
      _$BSContractFromJson(json);
}

@freezed
class BSTransactionStatus with _$BSTransactionStatus {
  const factory BSTransactionStatus({
    bool? confirmed,
    @JsonKey(name: 'block_height') int? blockHeight,
    @JsonKey(name: 'block_hash') String? blockHash,
    @JsonKey(name: 'block_time') int? blockTime,
  }) = _BSTransactionStatus;

  factory BSTransactionStatus.fromJson(Map<String, dynamic> json) =>
      _$BSTransactionStatusFromJson(json);
}

@freezed
class BSTransactionPegout with _$BSTransactionPegout {
  const factory BSTransactionPegout({
    @JsonKey(name: 'genesis_hash') String? genesisHash,
    String? scriptpubkey,
    @JsonKey(name: 'scriptpubkey_asm') String? scriptpubkeyAsm,
    @JsonKey(name: 'scriptpubkey_address') String? scriptpubkeyAddress,
  }) = _BSTransactionPegout;

  factory BSTransactionPegout.fromJson(Map<String, dynamic> json) =>
      _$BSTransactionPegoutFromJson(json);
}

@freezed
class BSVout with _$BSVout {
  const factory BSVout({
    String? scriptpubkey,
    @JsonKey(name: 'scriptpubkey_asm') String? scriptpubkeyAsm,
    @JsonKey(name: 'scriptpubkey_type') String? scriptpubkeyType,
    @JsonKey(name: 'scriptpubkey_address') String? scriptpubkeyAddress,
    int? value,
    String? valuecommitment,
    String? asset,
    String? assetcommitment,
    BSTransactionPegout? pegout,
  }) = _BSVout;

  factory BSVout.fromJson(Map<String, dynamic> json) => _$BSVoutFromJson(json);
}

@freezed
class BSTransactionIssuance with _$BSTransactionIssuance {
  const factory BSTransactionIssuance({
    @JsonKey(name: 'asset_id') String? assetId,
    @JsonKey(name: 'is_reissuance') bool? isReissuance,
    @JsonKey(name: 'asset_blinding_nonce') String? assetBlindingNonce,
    @JsonKey(name: 'asset_entropy') String? assetEntropy,
    @JsonKey(name: 'contract_hash') String? contractHash,
    int? assetamount,
    String? assetamountcommitment,
    int? tokenamount,
    String? tokenamountcommitment,
  }) = _BSTransactionIssuance;

  factory BSTransactionIssuance.fromJson(Map<String, dynamic> json) =>
      _$BSTransactionIssuanceFromJson(json);
}

@freezed
class BSVin with _$BSVin {
  const factory BSVin({
    String? txid,
    int? vout,
    @JsonKey(name: 'is_coinbase') bool? isCoinbase,
    String? scriptsig,
    @JsonKey(name: 'scriptsig_asm') String? scriptsigAsm,
    @JsonKey(name: 'inner_redeemscript_asm') String? innerRedeemScriptAsm,
    @JsonKey(name: 'inner_witnessscript_asm') String? innerWitnessScriptAsm,
    int? sequence,
    List<String>? witness,
    BSVout? prevout,
    @JsonKey(name: 'is_pegin') bool? isPegIn,
    BSTransactionIssuance? issuance,
  }) = _BSVin;

  factory BSVin.fromJson(Map<String, dynamic> json) => _$BSVinFromJson(json);
}

@freezed
class BSTransaction with _$BSTransaction {
  const factory BSTransaction({
    String? txid,
    int? version,
    int? locktime,
    int? size,
    int? weight,
    int? fee,
    List<BSVin>? vin,
    List<BSVout>? vout,
    BSStatus? status,
  }) = _BSTransaction;

  factory BSTransaction.fromJson(Map<String, dynamic> json) =>
      _$BSTransactionFromJson(json);
}

@freezed
class BSBlockTransactions with _$BSBlockTransactions {
  const factory BSBlockTransactions({
    List<BSTransaction>? transactions,
  }) = _BSBlockTransactions;

  factory BSBlockTransactions.fromJson(Map<String, dynamic> json) =>
      _$BSBlockTransactionsFromJson(json);
}

@freezed
class BSBlocks with _$BSBlocks {
  const factory BSBlocks({
    List<BSBlock>? blocks,
  }) = _BSBlocks;

  factory BSBlocks.fromJson(Map<String, dynamic> json) =>
      _$BSBlocksFromJson(json);
}

@freezed
class BSBlock with _$BSBlock {
  const factory BSBlock({
    String? id,
    int? height,
    int? version,
    int? timestamp,
    @JsonKey(name: 'tx_count') int? txCount,
    int? size,
    int? weight,
    @JsonKey(name: 'merkle_root') String? merkleRoot,
    String? previousblockhash,
    int? mediantime,
  }) = _BSBlock;

  factory BSBlock.fromJson(Map<String, dynamic> json) =>
      _$BSBlockFromJson(json);
}
