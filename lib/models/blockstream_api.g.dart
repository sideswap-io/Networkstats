// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockstream_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BSRegistry _$$_BSRegistryFromJson(Map json) => _$_BSRegistry(
      assets: (json['assets'] as List<dynamic>?)
          ?.map((e) => BSAsset.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_BSRegistryToJson(_$_BSRegistry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('assets', instance.assets?.map((e) => e.toJson()).toList());
  return val;
}

_$_BSAsset _$$_BSAssetFromJson(Map json) => _$_BSAsset(
      assetId: json['asset_id'] as String?,
      chainStats: json['chain_stats'] == null
          ? null
          : BSAssetStats.fromJson(
              Map<String, dynamic>.from(json['chain_stats'] as Map)),
      mempoolStats: json['mempool_stats'] == null
          ? null
          : BSAssetStats.fromJson(
              Map<String, dynamic>.from(json['mempool_stats'] as Map)),
      issuanceTxin: json['issuance_txin'] == null
          ? null
          : BSIssuance.fromJson(
              Map<String, dynamic>.from(json['issuance_txin'] as Map)),
      issuancePrevout: json['issuance_prevout'] == null
          ? null
          : BSIssuance.fromJson(
              Map<String, dynamic>.from(json['issuance_prevout'] as Map)),
      contractHash: json['contract_hash'] as String?,
      reissuanceToken: json['reissuance_token'] as String?,
      status: json['status'] == null
          ? null
          : BSStatus.fromJson(Map<String, dynamic>.from(json['status'] as Map)),
      contract: json['contract'] == null
          ? null
          : BSContract.fromJson(
              Map<String, dynamic>.from(json['contract'] as Map)),
      entity: json['entity'] == null
          ? null
          : BSEntity.fromJson(Map<String, dynamic>.from(json['entity'] as Map)),
      precision: json['precision'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_BSAssetToJson(_$_BSAsset instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('asset_id', instance.assetId);
  writeNotNull('chain_stats', instance.chainStats?.toJson());
  writeNotNull('mempool_stats', instance.mempoolStats?.toJson());
  writeNotNull('issuance_txin', instance.issuanceTxin?.toJson());
  writeNotNull('issuance_prevout', instance.issuancePrevout?.toJson());
  writeNotNull('contract_hash', instance.contractHash);
  writeNotNull('reissuance_token', instance.reissuanceToken);
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('contract', instance.contract?.toJson());
  writeNotNull('entity', instance.entity?.toJson());
  writeNotNull('precision', instance.precision);
  writeNotNull('name', instance.name);
  return val;
}

_$_BSAssetStats _$$_BSAssetStatsFromJson(Map json) => _$_BSAssetStats(
      txCount: json['tx_count'] as int?,
      pegInCount: json['peg_in_count'] as int?,
      pegInAmount: json['peg_in_amount'] as int?,
      pegOutCount: json['peg_out_count'] as int?,
      pegOutAmount: json['peg_out_amount'] as int?,
      burnCount: json['burn_count'] as int?,
      burnedAmount: json['burned_amount'] as int?,
      issuanceAmount: json['issuance_amount'] as int?,
      issuedAmount: json['issued_amount'] as int?,
      hasBlindedIssuance: json['has_blinded_issuance'] as bool?,
      reissuanceTokens: json['reissuance_tokens'] as int?,
      burnedReissuanceTokens: json['burned_reissuance_tokens'] as int?,
    );

Map<String, dynamic> _$$_BSAssetStatsToJson(_$_BSAssetStats instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tx_count', instance.txCount);
  writeNotNull('peg_in_count', instance.pegInCount);
  writeNotNull('peg_in_amount', instance.pegInAmount);
  writeNotNull('peg_out_count', instance.pegOutCount);
  writeNotNull('peg_out_amount', instance.pegOutAmount);
  writeNotNull('burn_count', instance.burnCount);
  writeNotNull('burned_amount', instance.burnedAmount);
  writeNotNull('issuance_amount', instance.issuanceAmount);
  writeNotNull('issued_amount', instance.issuedAmount);
  writeNotNull('has_blinded_issuance', instance.hasBlindedIssuance);
  writeNotNull('reissuance_tokens', instance.reissuanceTokens);
  writeNotNull('burned_reissuance_tokens', instance.burnedReissuanceTokens);
  return val;
}

_$_BSIssuance _$$_BSIssuanceFromJson(Map json) => _$_BSIssuance(
      txid: json['txid'] as String?,
      vin: json['vin'] as int?,
    );

Map<String, dynamic> _$$_BSIssuanceToJson(_$_BSIssuance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('txid', instance.txid);
  writeNotNull('vin', instance.vin);
  return val;
}

_$_BSStatus _$$_BSStatusFromJson(Map json) => _$_BSStatus(
      confirmed: json['confirmed'] as bool?,
      blockHeight: json['block_height'] as int?,
      blockHash: json['block_hash'] as String?,
      blockTime: json['block_time'] as int?,
    );

Map<String, dynamic> _$$_BSStatusToJson(_$_BSStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('confirmed', instance.confirmed);
  writeNotNull('block_height', instance.blockHeight);
  writeNotNull('block_hash', instance.blockHash);
  writeNotNull('block_time', instance.blockTime);
  return val;
}

_$_BSEntity _$$_BSEntityFromJson(Map json) => _$_BSEntity(
      domain: json['domain'] as String?,
    );

Map<String, dynamic> _$$_BSEntityToJson(_$_BSEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('domain', instance.domain);
  return val;
}

_$_BSContract _$$_BSContractFromJson(Map json) => _$_BSContract(
      entity: json['entity'] == null
          ? null
          : BSEntity.fromJson(Map<String, dynamic>.from(json['entity'] as Map)),
      issuerPubkey: json['issuer_pubkey'] as String?,
      name: json['name'] as String?,
      precision: json['precision'] as int?,
      version: json['version'] as int?,
    );

Map<String, dynamic> _$$_BSContractToJson(_$_BSContract instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  writeNotNull('issuer_pubkey', instance.issuerPubkey);
  writeNotNull('name', instance.name);
  writeNotNull('precision', instance.precision);
  writeNotNull('version', instance.version);
  return val;
}

_$_BSTransactionStatus _$$_BSTransactionStatusFromJson(Map json) =>
    _$_BSTransactionStatus(
      confirmed: json['confirmed'] as bool?,
      blockHeight: json['block_height'] as int?,
      blockHash: json['block_hash'] as String?,
      blockTime: json['block_time'] as int?,
    );

Map<String, dynamic> _$$_BSTransactionStatusToJson(
    _$_BSTransactionStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('confirmed', instance.confirmed);
  writeNotNull('block_height', instance.blockHeight);
  writeNotNull('block_hash', instance.blockHash);
  writeNotNull('block_time', instance.blockTime);
  return val;
}

_$_BSTransactionPegout _$$_BSTransactionPegoutFromJson(Map json) =>
    _$_BSTransactionPegout(
      genesisHash: json['genesis_hash'] as String?,
      scriptpubkey: json['scriptpubkey'] as String?,
      scriptpubkeyAsm: json['scriptpubkey_asm'] as String?,
      scriptpubkeyAddress: json['scriptpubkey_address'] as String?,
    );

Map<String, dynamic> _$$_BSTransactionPegoutToJson(
    _$_BSTransactionPegout instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('genesis_hash', instance.genesisHash);
  writeNotNull('scriptpubkey', instance.scriptpubkey);
  writeNotNull('scriptpubkey_asm', instance.scriptpubkeyAsm);
  writeNotNull('scriptpubkey_address', instance.scriptpubkeyAddress);
  return val;
}

_$_BSVout _$$_BSVoutFromJson(Map json) => _$_BSVout(
      scriptpubkey: json['scriptpubkey'] as String?,
      scriptpubkeyAsm: json['scriptpubkey_asm'] as String?,
      scriptpubkeyType: json['scriptpubkey_type'] as String?,
      scriptpubkeyAddress: json['scriptpubkey_address'] as String?,
      value: json['value'] as int?,
      valuecommitment: json['valuecommitment'] as String?,
      asset: json['asset'] as String?,
      assetcommitment: json['assetcommitment'] as String?,
      pegout: json['pegout'] == null
          ? null
          : BSTransactionPegout.fromJson(
              Map<String, dynamic>.from(json['pegout'] as Map)),
    );

Map<String, dynamic> _$$_BSVoutToJson(_$_BSVout instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('scriptpubkey', instance.scriptpubkey);
  writeNotNull('scriptpubkey_asm', instance.scriptpubkeyAsm);
  writeNotNull('scriptpubkey_type', instance.scriptpubkeyType);
  writeNotNull('scriptpubkey_address', instance.scriptpubkeyAddress);
  writeNotNull('value', instance.value);
  writeNotNull('valuecommitment', instance.valuecommitment);
  writeNotNull('asset', instance.asset);
  writeNotNull('assetcommitment', instance.assetcommitment);
  writeNotNull('pegout', instance.pegout?.toJson());
  return val;
}

_$_BSTransactionIssuance _$$_BSTransactionIssuanceFromJson(Map json) =>
    _$_BSTransactionIssuance(
      assetId: json['asset_id'] as String?,
      isReissuance: json['is_reissuance'] as bool?,
      assetBlindingNonce: json['asset_blinding_nonce'] as String?,
      assetEntropy: json['asset_entropy'] as String?,
      contractHash: json['contract_hash'] as String?,
      assetamount: json['assetamount'] as int?,
      assetamountcommitment: json['assetamountcommitment'] as String?,
      tokenamount: json['tokenamount'] as int?,
      tokenamountcommitment: json['tokenamountcommitment'] as String?,
    );

Map<String, dynamic> _$$_BSTransactionIssuanceToJson(
    _$_BSTransactionIssuance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('asset_id', instance.assetId);
  writeNotNull('is_reissuance', instance.isReissuance);
  writeNotNull('asset_blinding_nonce', instance.assetBlindingNonce);
  writeNotNull('asset_entropy', instance.assetEntropy);
  writeNotNull('contract_hash', instance.contractHash);
  writeNotNull('assetamount', instance.assetamount);
  writeNotNull('assetamountcommitment', instance.assetamountcommitment);
  writeNotNull('tokenamount', instance.tokenamount);
  writeNotNull('tokenamountcommitment', instance.tokenamountcommitment);
  return val;
}

_$_BSVin _$$_BSVinFromJson(Map json) => _$_BSVin(
      txid: json['txid'] as String?,
      vout: json['vout'] as int?,
      isCoinbase: json['is_coinbase'] as bool?,
      scriptsig: json['scriptsig'] as String?,
      scriptsigAsm: json['scriptsig_asm'] as String?,
      innerRedeemScriptAsm: json['inner_redeemscript_asm'] as String?,
      innerWitnessScriptAsm: json['inner_witnessscript_asm'] as String?,
      sequence: json['sequence'] as int?,
      witness:
          (json['witness'] as List<dynamic>?)?.map((e) => e as String).toList(),
      prevout: json['prevout'] == null
          ? null
          : BSVout.fromJson(Map<String, dynamic>.from(json['prevout'] as Map)),
      isPegIn: json['is_pegin'] as bool?,
      issuance: json['issuance'] == null
          ? null
          : BSTransactionIssuance.fromJson(
              Map<String, dynamic>.from(json['issuance'] as Map)),
    );

Map<String, dynamic> _$$_BSVinToJson(_$_BSVin instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('txid', instance.txid);
  writeNotNull('vout', instance.vout);
  writeNotNull('is_coinbase', instance.isCoinbase);
  writeNotNull('scriptsig', instance.scriptsig);
  writeNotNull('scriptsig_asm', instance.scriptsigAsm);
  writeNotNull('inner_redeemscript_asm', instance.innerRedeemScriptAsm);
  writeNotNull('inner_witnessscript_asm', instance.innerWitnessScriptAsm);
  writeNotNull('sequence', instance.sequence);
  writeNotNull('witness', instance.witness);
  writeNotNull('prevout', instance.prevout?.toJson());
  writeNotNull('is_pegin', instance.isPegIn);
  writeNotNull('issuance', instance.issuance?.toJson());
  return val;
}

_$_BSTransaction _$$_BSTransactionFromJson(Map json) => _$_BSTransaction(
      txid: json['txid'] as String?,
      version: json['version'] as int?,
      locktime: json['locktime'] as int?,
      size: json['size'] as int?,
      weight: json['weight'] as int?,
      fee: json['fee'] as int?,
      vin: (json['vin'] as List<dynamic>?)
          ?.map((e) => BSVin.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      vout: (json['vout'] as List<dynamic>?)
          ?.map((e) => BSVout.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      status: json['status'] == null
          ? null
          : BSStatus.fromJson(Map<String, dynamic>.from(json['status'] as Map)),
    );

Map<String, dynamic> _$$_BSTransactionToJson(_$_BSTransaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('txid', instance.txid);
  writeNotNull('version', instance.version);
  writeNotNull('locktime', instance.locktime);
  writeNotNull('size', instance.size);
  writeNotNull('weight', instance.weight);
  writeNotNull('fee', instance.fee);
  writeNotNull('vin', instance.vin?.map((e) => e.toJson()).toList());
  writeNotNull('vout', instance.vout?.map((e) => e.toJson()).toList());
  writeNotNull('status', instance.status?.toJson());
  return val;
}

_$_BSBlockTransactions _$$_BSBlockTransactionsFromJson(Map json) =>
    _$_BSBlockTransactions(
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) =>
              BSTransaction.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_BSBlockTransactionsToJson(
    _$_BSBlockTransactions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transactions', instance.transactions?.map((e) => e.toJson()).toList());
  return val;
}

_$_BSBlocks _$$_BSBlocksFromJson(Map json) => _$_BSBlocks(
      blocks: (json['blocks'] as List<dynamic>?)
          ?.map((e) => BSBlock.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_BSBlocksToJson(_$_BSBlocks instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blocks', instance.blocks?.map((e) => e.toJson()).toList());
  return val;
}

_$_BSBlock _$$_BSBlockFromJson(Map json) => _$_BSBlock(
      id: json['id'] as String?,
      height: json['height'] as int?,
      version: json['version'] as int?,
      timestamp: json['timestamp'] as int?,
      txCount: json['tx_count'] as int?,
      size: json['size'] as int?,
      weight: json['weight'] as int?,
      merkleRoot: json['merkle_root'] as String?,
      previousblockhash: json['previousblockhash'] as String?,
      mediantime: json['mediantime'] as int?,
    );

Map<String, dynamic> _$$_BSBlockToJson(_$_BSBlock instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('height', instance.height);
  writeNotNull('version', instance.version);
  writeNotNull('timestamp', instance.timestamp);
  writeNotNull('tx_count', instance.txCount);
  writeNotNull('size', instance.size);
  writeNotNull('weight', instance.weight);
  writeNotNull('merkle_root', instance.merkleRoot);
  writeNotNull('previousblockhash', instance.previousblockhash);
  writeNotNull('mediantime', instance.mediantime);
  return val;
}
