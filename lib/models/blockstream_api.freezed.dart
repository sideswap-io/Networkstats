// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blockstream_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BSRegistry _$BSRegistryFromJson(Map<String, dynamic> json) {
  return _BSRegistry.fromJson(json);
}

/// @nodoc
mixin _$BSRegistry {
  List<BSAsset>? get assets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BSRegistryCopyWith<BSRegistry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BSRegistryCopyWith<$Res> {
  factory $BSRegistryCopyWith(
          BSRegistry value, $Res Function(BSRegistry) then) =
      _$BSRegistryCopyWithImpl<$Res, BSRegistry>;
  @useResult
  $Res call({List<BSAsset>? assets});
}

/// @nodoc
class _$BSRegistryCopyWithImpl<$Res, $Val extends BSRegistry>
    implements $BSRegistryCopyWith<$Res> {
  _$BSRegistryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assets = freezed,
  }) {
    return _then(_value.copyWith(
      assets: freezed == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<BSAsset>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BSRegistryCopyWith<$Res>
    implements $BSRegistryCopyWith<$Res> {
  factory _$$_BSRegistryCopyWith(
          _$_BSRegistry value, $Res Function(_$_BSRegistry) then) =
      __$$_BSRegistryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BSAsset>? assets});
}

/// @nodoc
class __$$_BSRegistryCopyWithImpl<$Res>
    extends _$BSRegistryCopyWithImpl<$Res, _$_BSRegistry>
    implements _$$_BSRegistryCopyWith<$Res> {
  __$$_BSRegistryCopyWithImpl(
      _$_BSRegistry _value, $Res Function(_$_BSRegistry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assets = freezed,
  }) {
    return _then(_$_BSRegistry(
      assets: freezed == assets
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<BSAsset>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BSRegistry implements _BSRegistry {
  const _$_BSRegistry({final List<BSAsset>? assets}) : _assets = assets;

  factory _$_BSRegistry.fromJson(Map<String, dynamic> json) =>
      _$$_BSRegistryFromJson(json);

  final List<BSAsset>? _assets;
  @override
  List<BSAsset>? get assets {
    final value = _assets;
    if (value == null) return null;
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BSRegistry(assets: $assets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BSRegistry &&
            const DeepCollectionEquality().equals(other._assets, _assets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BSRegistryCopyWith<_$_BSRegistry> get copyWith =>
      __$$_BSRegistryCopyWithImpl<_$_BSRegistry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BSRegistryToJson(
      this,
    );
  }
}

abstract class _BSRegistry implements BSRegistry {
  const factory _BSRegistry({final List<BSAsset>? assets}) = _$_BSRegistry;

  factory _BSRegistry.fromJson(Map<String, dynamic> json) =
      _$_BSRegistry.fromJson;

  @override
  List<BSAsset>? get assets;
  @override
  @JsonKey(ignore: true)
  _$$_BSRegistryCopyWith<_$_BSRegistry> get copyWith =>
      throw _privateConstructorUsedError;
}

BSAsset _$BSAssetFromJson(Map<String, dynamic> json) {
  return _BSAsset.fromJson(json);
}

/// @nodoc
mixin _$BSAsset {
  @JsonKey(name: 'asset_id')
  String? get assetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chain_stats')
  BSAssetStats? get chainStats => throw _privateConstructorUsedError;
  @JsonKey(name: 'mempool_stats')
  BSAssetStats? get mempoolStats => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuance_txin')
  BSIssuance? get issuanceTxin => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuance_prevout')
  BSIssuance? get issuancePrevout => throw _privateConstructorUsedError;
  @JsonKey(name: 'contract_hash')
  String? get contractHash => throw _privateConstructorUsedError;
  @JsonKey(name: 'reissuance_token')
  String? get reissuanceToken => throw _privateConstructorUsedError;
  BSStatus? get status => throw _privateConstructorUsedError;
  BSContract? get contract => throw _privateConstructorUsedError;
  BSEntity? get entity => throw _privateConstructorUsedError;
  int? get precision => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BSAssetCopyWith<BSAsset> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BSAssetCopyWith<$Res> {
  factory $BSAssetCopyWith(BSAsset value, $Res Function(BSAsset) then) =
      _$BSAssetCopyWithImpl<$Res, BSAsset>;
  @useResult
  $Res call(
      {@JsonKey(name: 'asset_id') String? assetId,
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
      String? name});

  $BSAssetStatsCopyWith<$Res>? get chainStats;
  $BSAssetStatsCopyWith<$Res>? get mempoolStats;
  $BSIssuanceCopyWith<$Res>? get issuanceTxin;
  $BSIssuanceCopyWith<$Res>? get issuancePrevout;
  $BSStatusCopyWith<$Res>? get status;
  $BSContractCopyWith<$Res>? get contract;
  $BSEntityCopyWith<$Res>? get entity;
}

/// @nodoc
class _$BSAssetCopyWithImpl<$Res, $Val extends BSAsset>
    implements $BSAssetCopyWith<$Res> {
  _$BSAssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetId = freezed,
    Object? chainStats = freezed,
    Object? mempoolStats = freezed,
    Object? issuanceTxin = freezed,
    Object? issuancePrevout = freezed,
    Object? contractHash = freezed,
    Object? reissuanceToken = freezed,
    Object? status = freezed,
    Object? contract = freezed,
    Object? entity = freezed,
    Object? precision = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      assetId: freezed == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
      chainStats: freezed == chainStats
          ? _value.chainStats
          : chainStats // ignore: cast_nullable_to_non_nullable
              as BSAssetStats?,
      mempoolStats: freezed == mempoolStats
          ? _value.mempoolStats
          : mempoolStats // ignore: cast_nullable_to_non_nullable
              as BSAssetStats?,
      issuanceTxin: freezed == issuanceTxin
          ? _value.issuanceTxin
          : issuanceTxin // ignore: cast_nullable_to_non_nullable
              as BSIssuance?,
      issuancePrevout: freezed == issuancePrevout
          ? _value.issuancePrevout
          : issuancePrevout // ignore: cast_nullable_to_non_nullable
              as BSIssuance?,
      contractHash: freezed == contractHash
          ? _value.contractHash
          : contractHash // ignore: cast_nullable_to_non_nullable
              as String?,
      reissuanceToken: freezed == reissuanceToken
          ? _value.reissuanceToken
          : reissuanceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BSStatus?,
      contract: freezed == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as BSContract?,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as BSEntity?,
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BSAssetStatsCopyWith<$Res>? get chainStats {
    if (_value.chainStats == null) {
      return null;
    }

    return $BSAssetStatsCopyWith<$Res>(_value.chainStats!, (value) {
      return _then(_value.copyWith(chainStats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BSAssetStatsCopyWith<$Res>? get mempoolStats {
    if (_value.mempoolStats == null) {
      return null;
    }

    return $BSAssetStatsCopyWith<$Res>(_value.mempoolStats!, (value) {
      return _then(_value.copyWith(mempoolStats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BSIssuanceCopyWith<$Res>? get issuanceTxin {
    if (_value.issuanceTxin == null) {
      return null;
    }

    return $BSIssuanceCopyWith<$Res>(_value.issuanceTxin!, (value) {
      return _then(_value.copyWith(issuanceTxin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BSIssuanceCopyWith<$Res>? get issuancePrevout {
    if (_value.issuancePrevout == null) {
      return null;
    }

    return $BSIssuanceCopyWith<$Res>(_value.issuancePrevout!, (value) {
      return _then(_value.copyWith(issuancePrevout: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BSStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $BSStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BSContractCopyWith<$Res>? get contract {
    if (_value.contract == null) {
      return null;
    }

    return $BSContractCopyWith<$Res>(_value.contract!, (value) {
      return _then(_value.copyWith(contract: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BSEntityCopyWith<$Res>? get entity {
    if (_value.entity == null) {
      return null;
    }

    return $BSEntityCopyWith<$Res>(_value.entity!, (value) {
      return _then(_value.copyWith(entity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BSAssetCopyWith<$Res> implements $BSAssetCopyWith<$Res> {
  factory _$$_BSAssetCopyWith(
          _$_BSAsset value, $Res Function(_$_BSAsset) then) =
      __$$_BSAssetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'asset_id') String? assetId,
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
      String? name});

  @override
  $BSAssetStatsCopyWith<$Res>? get chainStats;
  @override
  $BSAssetStatsCopyWith<$Res>? get mempoolStats;
  @override
  $BSIssuanceCopyWith<$Res>? get issuanceTxin;
  @override
  $BSIssuanceCopyWith<$Res>? get issuancePrevout;
  @override
  $BSStatusCopyWith<$Res>? get status;
  @override
  $BSContractCopyWith<$Res>? get contract;
  @override
  $BSEntityCopyWith<$Res>? get entity;
}

/// @nodoc
class __$$_BSAssetCopyWithImpl<$Res>
    extends _$BSAssetCopyWithImpl<$Res, _$_BSAsset>
    implements _$$_BSAssetCopyWith<$Res> {
  __$$_BSAssetCopyWithImpl(_$_BSAsset _value, $Res Function(_$_BSAsset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetId = freezed,
    Object? chainStats = freezed,
    Object? mempoolStats = freezed,
    Object? issuanceTxin = freezed,
    Object? issuancePrevout = freezed,
    Object? contractHash = freezed,
    Object? reissuanceToken = freezed,
    Object? status = freezed,
    Object? contract = freezed,
    Object? entity = freezed,
    Object? precision = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_BSAsset(
      assetId: freezed == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
      chainStats: freezed == chainStats
          ? _value.chainStats
          : chainStats // ignore: cast_nullable_to_non_nullable
              as BSAssetStats?,
      mempoolStats: freezed == mempoolStats
          ? _value.mempoolStats
          : mempoolStats // ignore: cast_nullable_to_non_nullable
              as BSAssetStats?,
      issuanceTxin: freezed == issuanceTxin
          ? _value.issuanceTxin
          : issuanceTxin // ignore: cast_nullable_to_non_nullable
              as BSIssuance?,
      issuancePrevout: freezed == issuancePrevout
          ? _value.issuancePrevout
          : issuancePrevout // ignore: cast_nullable_to_non_nullable
              as BSIssuance?,
      contractHash: freezed == contractHash
          ? _value.contractHash
          : contractHash // ignore: cast_nullable_to_non_nullable
              as String?,
      reissuanceToken: freezed == reissuanceToken
          ? _value.reissuanceToken
          : reissuanceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BSStatus?,
      contract: freezed == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as BSContract?,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as BSEntity?,
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BSAsset implements _BSAsset {
  const _$_BSAsset(
      {@JsonKey(name: 'asset_id') this.assetId,
      @JsonKey(name: 'chain_stats') this.chainStats,
      @JsonKey(name: 'mempool_stats') this.mempoolStats,
      @JsonKey(name: 'issuance_txin') this.issuanceTxin,
      @JsonKey(name: 'issuance_prevout') this.issuancePrevout,
      @JsonKey(name: 'contract_hash') this.contractHash,
      @JsonKey(name: 'reissuance_token') this.reissuanceToken,
      this.status,
      this.contract,
      this.entity,
      this.precision,
      this.name});

  factory _$_BSAsset.fromJson(Map<String, dynamic> json) =>
      _$$_BSAssetFromJson(json);

  @override
  @JsonKey(name: 'asset_id')
  final String? assetId;
  @override
  @JsonKey(name: 'chain_stats')
  final BSAssetStats? chainStats;
  @override
  @JsonKey(name: 'mempool_stats')
  final BSAssetStats? mempoolStats;
  @override
  @JsonKey(name: 'issuance_txin')
  final BSIssuance? issuanceTxin;
  @override
  @JsonKey(name: 'issuance_prevout')
  final BSIssuance? issuancePrevout;
  @override
  @JsonKey(name: 'contract_hash')
  final String? contractHash;
  @override
  @JsonKey(name: 'reissuance_token')
  final String? reissuanceToken;
  @override
  final BSStatus? status;
  @override
  final BSContract? contract;
  @override
  final BSEntity? entity;
  @override
  final int? precision;
  @override
  final String? name;

  @override
  String toString() {
    return 'BSAsset(assetId: $assetId, chainStats: $chainStats, mempoolStats: $mempoolStats, issuanceTxin: $issuanceTxin, issuancePrevout: $issuancePrevout, contractHash: $contractHash, reissuanceToken: $reissuanceToken, status: $status, contract: $contract, entity: $entity, precision: $precision, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BSAsset &&
            (identical(other.assetId, assetId) || other.assetId == assetId) &&
            (identical(other.chainStats, chainStats) ||
                other.chainStats == chainStats) &&
            (identical(other.mempoolStats, mempoolStats) ||
                other.mempoolStats == mempoolStats) &&
            (identical(other.issuanceTxin, issuanceTxin) ||
                other.issuanceTxin == issuanceTxin) &&
            (identical(other.issuancePrevout, issuancePrevout) ||
                other.issuancePrevout == issuancePrevout) &&
            (identical(other.contractHash, contractHash) ||
                other.contractHash == contractHash) &&
            (identical(other.reissuanceToken, reissuanceToken) ||
                other.reissuanceToken == reissuanceToken) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.precision, precision) ||
                other.precision == precision) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      assetId,
      chainStats,
      mempoolStats,
      issuanceTxin,
      issuancePrevout,
      contractHash,
      reissuanceToken,
      status,
      contract,
      entity,
      precision,
      name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BSAssetCopyWith<_$_BSAsset> get copyWith =>
      __$$_BSAssetCopyWithImpl<_$_BSAsset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BSAssetToJson(
      this,
    );
  }
}

abstract class _BSAsset implements BSAsset {
  const factory _BSAsset(
      {@JsonKey(name: 'asset_id') final String? assetId,
      @JsonKey(name: 'chain_stats') final BSAssetStats? chainStats,
      @JsonKey(name: 'mempool_stats') final BSAssetStats? mempoolStats,
      @JsonKey(name: 'issuance_txin') final BSIssuance? issuanceTxin,
      @JsonKey(name: 'issuance_prevout') final BSIssuance? issuancePrevout,
      @JsonKey(name: 'contract_hash') final String? contractHash,
      @JsonKey(name: 'reissuance_token') final String? reissuanceToken,
      final BSStatus? status,
      final BSContract? contract,
      final BSEntity? entity,
      final int? precision,
      final String? name}) = _$_BSAsset;

  factory _BSAsset.fromJson(Map<String, dynamic> json) = _$_BSAsset.fromJson;

  @override
  @JsonKey(name: 'asset_id')
  String? get assetId;
  @override
  @JsonKey(name: 'chain_stats')
  BSAssetStats? get chainStats;
  @override
  @JsonKey(name: 'mempool_stats')
  BSAssetStats? get mempoolStats;
  @override
  @JsonKey(name: 'issuance_txin')
  BSIssuance? get issuanceTxin;
  @override
  @JsonKey(name: 'issuance_prevout')
  BSIssuance? get issuancePrevout;
  @override
  @JsonKey(name: 'contract_hash')
  String? get contractHash;
  @override
  @JsonKey(name: 'reissuance_token')
  String? get reissuanceToken;
  @override
  BSStatus? get status;
  @override
  BSContract? get contract;
  @override
  BSEntity? get entity;
  @override
  int? get precision;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_BSAssetCopyWith<_$_BSAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

BSAssetStats _$BSAssetStatsFromJson(Map<String, dynamic> json) {
  return _BSAssetStats.fromJson(json);
}

/// @nodoc
mixin _$BSAssetStats {
  @JsonKey(name: 'tx_count')
  int? get txCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'peg_in_count')
  int? get pegInCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'peg_in_amount')
  int? get pegInAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'peg_out_count')
  int? get pegOutCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'peg_out_amount')
  int? get pegOutAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'burn_count')
  int? get burnCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'burned_amount')
  int? get burnedAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuance_amount')
  int? get issuanceAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'issued_amount')
  int? get issuedAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_blinded_issuance')
  bool? get hasBlindedIssuance => throw _privateConstructorUsedError;
  @JsonKey(name: 'reissuance_tokens')
  int? get reissuanceTokens => throw _privateConstructorUsedError;
  @JsonKey(name: 'burned_reissuance_tokens')
  int? get burnedReissuanceTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BSAssetStatsCopyWith<BSAssetStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BSAssetStatsCopyWith<$Res> {
  factory $BSAssetStatsCopyWith(
          BSAssetStats value, $Res Function(BSAssetStats) then) =
      _$BSAssetStatsCopyWithImpl<$Res, BSAssetStats>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tx_count') int? txCount,
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
      @JsonKey(name: 'burned_reissuance_tokens') int? burnedReissuanceTokens});
}

/// @nodoc
class _$BSAssetStatsCopyWithImpl<$Res, $Val extends BSAssetStats>
    implements $BSAssetStatsCopyWith<$Res> {
  _$BSAssetStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txCount = freezed,
    Object? pegInCount = freezed,
    Object? pegInAmount = freezed,
    Object? pegOutCount = freezed,
    Object? pegOutAmount = freezed,
    Object? burnCount = freezed,
    Object? burnedAmount = freezed,
    Object? issuanceAmount = freezed,
    Object? issuedAmount = freezed,
    Object? hasBlindedIssuance = freezed,
    Object? reissuanceTokens = freezed,
    Object? burnedReissuanceTokens = freezed,
  }) {
    return _then(_value.copyWith(
      txCount: freezed == txCount
          ? _value.txCount
          : txCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pegInCount: freezed == pegInCount
          ? _value.pegInCount
          : pegInCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pegInAmount: freezed == pegInAmount
          ? _value.pegInAmount
          : pegInAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      pegOutCount: freezed == pegOutCount
          ? _value.pegOutCount
          : pegOutCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pegOutAmount: freezed == pegOutAmount
          ? _value.pegOutAmount
          : pegOutAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      burnCount: freezed == burnCount
          ? _value.burnCount
          : burnCount // ignore: cast_nullable_to_non_nullable
              as int?,
      burnedAmount: freezed == burnedAmount
          ? _value.burnedAmount
          : burnedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      issuanceAmount: freezed == issuanceAmount
          ? _value.issuanceAmount
          : issuanceAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      issuedAmount: freezed == issuedAmount
          ? _value.issuedAmount
          : issuedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      hasBlindedIssuance: freezed == hasBlindedIssuance
          ? _value.hasBlindedIssuance
          : hasBlindedIssuance // ignore: cast_nullable_to_non_nullable
              as bool?,
      reissuanceTokens: freezed == reissuanceTokens
          ? _value.reissuanceTokens
          : reissuanceTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      burnedReissuanceTokens: freezed == burnedReissuanceTokens
          ? _value.burnedReissuanceTokens
          : burnedReissuanceTokens // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BSAssetStatsCopyWith<$Res>
    implements $BSAssetStatsCopyWith<$Res> {
  factory _$$_BSAssetStatsCopyWith(
          _$_BSAssetStats value, $Res Function(_$_BSAssetStats) then) =
      __$$_BSAssetStatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tx_count') int? txCount,
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
      @JsonKey(name: 'burned_reissuance_tokens') int? burnedReissuanceTokens});
}

/// @nodoc
class __$$_BSAssetStatsCopyWithImpl<$Res>
    extends _$BSAssetStatsCopyWithImpl<$Res, _$_BSAssetStats>
    implements _$$_BSAssetStatsCopyWith<$Res> {
  __$$_BSAssetStatsCopyWithImpl(
      _$_BSAssetStats _value, $Res Function(_$_BSAssetStats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txCount = freezed,
    Object? pegInCount = freezed,
    Object? pegInAmount = freezed,
    Object? pegOutCount = freezed,
    Object? pegOutAmount = freezed,
    Object? burnCount = freezed,
    Object? burnedAmount = freezed,
    Object? issuanceAmount = freezed,
    Object? issuedAmount = freezed,
    Object? hasBlindedIssuance = freezed,
    Object? reissuanceTokens = freezed,
    Object? burnedReissuanceTokens = freezed,
  }) {
    return _then(_$_BSAssetStats(
      txCount: freezed == txCount
          ? _value.txCount
          : txCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pegInCount: freezed == pegInCount
          ? _value.pegInCount
          : pegInCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pegInAmount: freezed == pegInAmount
          ? _value.pegInAmount
          : pegInAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      pegOutCount: freezed == pegOutCount
          ? _value.pegOutCount
          : pegOutCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pegOutAmount: freezed == pegOutAmount
          ? _value.pegOutAmount
          : pegOutAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      burnCount: freezed == burnCount
          ? _value.burnCount
          : burnCount // ignore: cast_nullable_to_non_nullable
              as int?,
      burnedAmount: freezed == burnedAmount
          ? _value.burnedAmount
          : burnedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      issuanceAmount: freezed == issuanceAmount
          ? _value.issuanceAmount
          : issuanceAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      issuedAmount: freezed == issuedAmount
          ? _value.issuedAmount
          : issuedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      hasBlindedIssuance: freezed == hasBlindedIssuance
          ? _value.hasBlindedIssuance
          : hasBlindedIssuance // ignore: cast_nullable_to_non_nullable
              as bool?,
      reissuanceTokens: freezed == reissuanceTokens
          ? _value.reissuanceTokens
          : reissuanceTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      burnedReissuanceTokens: freezed == burnedReissuanceTokens
          ? _value.burnedReissuanceTokens
          : burnedReissuanceTokens // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BSAssetStats implements _BSAssetStats {
  const _$_BSAssetStats(
      {@JsonKey(name: 'tx_count') this.txCount,
      @JsonKey(name: 'peg_in_count') this.pegInCount,
      @JsonKey(name: 'peg_in_amount') this.pegInAmount,
      @JsonKey(name: 'peg_out_count') this.pegOutCount,
      @JsonKey(name: 'peg_out_amount') this.pegOutAmount,
      @JsonKey(name: 'burn_count') this.burnCount,
      @JsonKey(name: 'burned_amount') this.burnedAmount,
      @JsonKey(name: 'issuance_amount') this.issuanceAmount,
      @JsonKey(name: 'issued_amount') this.issuedAmount,
      @JsonKey(name: 'has_blinded_issuance') this.hasBlindedIssuance,
      @JsonKey(name: 'reissuance_tokens') this.reissuanceTokens,
      @JsonKey(name: 'burned_reissuance_tokens') this.burnedReissuanceTokens});

  factory _$_BSAssetStats.fromJson(Map<String, dynamic> json) =>
      _$$_BSAssetStatsFromJson(json);

  @override
  @JsonKey(name: 'tx_count')
  final int? txCount;
  @override
  @JsonKey(name: 'peg_in_count')
  final int? pegInCount;
  @override
  @JsonKey(name: 'peg_in_amount')
  final int? pegInAmount;
  @override
  @JsonKey(name: 'peg_out_count')
  final int? pegOutCount;
  @override
  @JsonKey(name: 'peg_out_amount')
  final int? pegOutAmount;
  @override
  @JsonKey(name: 'burn_count')
  final int? burnCount;
  @override
  @JsonKey(name: 'burned_amount')
  final int? burnedAmount;
  @override
  @JsonKey(name: 'issuance_amount')
  final int? issuanceAmount;
  @override
  @JsonKey(name: 'issued_amount')
  final int? issuedAmount;
  @override
  @JsonKey(name: 'has_blinded_issuance')
  final bool? hasBlindedIssuance;
  @override
  @JsonKey(name: 'reissuance_tokens')
  final int? reissuanceTokens;
  @override
  @JsonKey(name: 'burned_reissuance_tokens')
  final int? burnedReissuanceTokens;

  @override
  String toString() {
    return 'BSAssetStats(txCount: $txCount, pegInCount: $pegInCount, pegInAmount: $pegInAmount, pegOutCount: $pegOutCount, pegOutAmount: $pegOutAmount, burnCount: $burnCount, burnedAmount: $burnedAmount, issuanceAmount: $issuanceAmount, issuedAmount: $issuedAmount, hasBlindedIssuance: $hasBlindedIssuance, reissuanceTokens: $reissuanceTokens, burnedReissuanceTokens: $burnedReissuanceTokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BSAssetStats &&
            (identical(other.txCount, txCount) || other.txCount == txCount) &&
            (identical(other.pegInCount, pegInCount) ||
                other.pegInCount == pegInCount) &&
            (identical(other.pegInAmount, pegInAmount) ||
                other.pegInAmount == pegInAmount) &&
            (identical(other.pegOutCount, pegOutCount) ||
                other.pegOutCount == pegOutCount) &&
            (identical(other.pegOutAmount, pegOutAmount) ||
                other.pegOutAmount == pegOutAmount) &&
            (identical(other.burnCount, burnCount) ||
                other.burnCount == burnCount) &&
            (identical(other.burnedAmount, burnedAmount) ||
                other.burnedAmount == burnedAmount) &&
            (identical(other.issuanceAmount, issuanceAmount) ||
                other.issuanceAmount == issuanceAmount) &&
            (identical(other.issuedAmount, issuedAmount) ||
                other.issuedAmount == issuedAmount) &&
            (identical(other.hasBlindedIssuance, hasBlindedIssuance) ||
                other.hasBlindedIssuance == hasBlindedIssuance) &&
            (identical(other.reissuanceTokens, reissuanceTokens) ||
                other.reissuanceTokens == reissuanceTokens) &&
            (identical(other.burnedReissuanceTokens, burnedReissuanceTokens) ||
                other.burnedReissuanceTokens == burnedReissuanceTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      txCount,
      pegInCount,
      pegInAmount,
      pegOutCount,
      pegOutAmount,
      burnCount,
      burnedAmount,
      issuanceAmount,
      issuedAmount,
      hasBlindedIssuance,
      reissuanceTokens,
      burnedReissuanceTokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BSAssetStatsCopyWith<_$_BSAssetStats> get copyWith =>
      __$$_BSAssetStatsCopyWithImpl<_$_BSAssetStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BSAssetStatsToJson(
      this,
    );
  }
}

abstract class _BSAssetStats implements BSAssetStats {
  const factory _BSAssetStats(
      {@JsonKey(name: 'tx_count')
          final int? txCount,
      @JsonKey(name: 'peg_in_count')
          final int? pegInCount,
      @JsonKey(name: 'peg_in_amount')
          final int? pegInAmount,
      @JsonKey(name: 'peg_out_count')
          final int? pegOutCount,
      @JsonKey(name: 'peg_out_amount')
          final int? pegOutAmount,
      @JsonKey(name: 'burn_count')
          final int? burnCount,
      @JsonKey(name: 'burned_amount')
          final int? burnedAmount,
      @JsonKey(name: 'issuance_amount')
          final int? issuanceAmount,
      @JsonKey(name: 'issued_amount')
          final int? issuedAmount,
      @JsonKey(name: 'has_blinded_issuance')
          final bool? hasBlindedIssuance,
      @JsonKey(name: 'reissuance_tokens')
          final int? reissuanceTokens,
      @JsonKey(name: 'burned_reissuance_tokens')
          final int? burnedReissuanceTokens}) = _$_BSAssetStats;

  factory _BSAssetStats.fromJson(Map<String, dynamic> json) =
      _$_BSAssetStats.fromJson;

  @override
  @JsonKey(name: 'tx_count')
  int? get txCount;
  @override
  @JsonKey(name: 'peg_in_count')
  int? get pegInCount;
  @override
  @JsonKey(name: 'peg_in_amount')
  int? get pegInAmount;
  @override
  @JsonKey(name: 'peg_out_count')
  int? get pegOutCount;
  @override
  @JsonKey(name: 'peg_out_amount')
  int? get pegOutAmount;
  @override
  @JsonKey(name: 'burn_count')
  int? get burnCount;
  @override
  @JsonKey(name: 'burned_amount')
  int? get burnedAmount;
  @override
  @JsonKey(name: 'issuance_amount')
  int? get issuanceAmount;
  @override
  @JsonKey(name: 'issued_amount')
  int? get issuedAmount;
  @override
  @JsonKey(name: 'has_blinded_issuance')
  bool? get hasBlindedIssuance;
  @override
  @JsonKey(name: 'reissuance_tokens')
  int? get reissuanceTokens;
  @override
  @JsonKey(name: 'burned_reissuance_tokens')
  int? get burnedReissuanceTokens;
  @override
  @JsonKey(ignore: true)
  _$$_BSAssetStatsCopyWith<_$_BSAssetStats> get copyWith =>
      throw _privateConstructorUsedError;
}

BSIssuance _$BSIssuanceFromJson(Map<String, dynamic> json) {
  return _BSIssuance.fromJson(json);
}

/// @nodoc
mixin _$BSIssuance {
  String? get txid => throw _privateConstructorUsedError;
  int? get vin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BSIssuanceCopyWith<BSIssuance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BSIssuanceCopyWith<$Res> {
  factory $BSIssuanceCopyWith(
          BSIssuance value, $Res Function(BSIssuance) then) =
      _$BSIssuanceCopyWithImpl<$Res, BSIssuance>;
  @useResult
  $Res call({String? txid, int? vin});
}

/// @nodoc
class _$BSIssuanceCopyWithImpl<$Res, $Val extends BSIssuance>
    implements $BSIssuanceCopyWith<$Res> {
  _$BSIssuanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txid = freezed,
    Object? vin = freezed,
  }) {
    return _then(_value.copyWith(
      txid: freezed == txid
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String?,
      vin: freezed == vin
          ? _value.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BSIssuanceCopyWith<$Res>
    implements $BSIssuanceCopyWith<$Res> {
  factory _$$_BSIssuanceCopyWith(
          _$_BSIssuance value, $Res Function(_$_BSIssuance) then) =
      __$$_BSIssuanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? txid, int? vin});
}

/// @nodoc
class __$$_BSIssuanceCopyWithImpl<$Res>
    extends _$BSIssuanceCopyWithImpl<$Res, _$_BSIssuance>
    implements _$$_BSIssuanceCopyWith<$Res> {
  __$$_BSIssuanceCopyWithImpl(
      _$_BSIssuance _value, $Res Function(_$_BSIssuance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txid = freezed,
    Object? vin = freezed,
  }) {
    return _then(_$_BSIssuance(
      txid: freezed == txid
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String?,
      vin: freezed == vin
          ? _value.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BSIssuance implements _BSIssuance {
  const _$_BSIssuance({this.txid, this.vin});

  factory _$_BSIssuance.fromJson(Map<String, dynamic> json) =>
      _$$_BSIssuanceFromJson(json);

  @override
  final String? txid;
  @override
  final int? vin;

  @override
  String toString() {
    return 'BSIssuance(txid: $txid, vin: $vin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BSIssuance &&
            (identical(other.txid, txid) || other.txid == txid) &&
            (identical(other.vin, vin) || other.vin == vin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, txid, vin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BSIssuanceCopyWith<_$_BSIssuance> get copyWith =>
      __$$_BSIssuanceCopyWithImpl<_$_BSIssuance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BSIssuanceToJson(
      this,
    );
  }
}

abstract class _BSIssuance implements BSIssuance {
  const factory _BSIssuance({final String? txid, final int? vin}) =
      _$_BSIssuance;

  factory _BSIssuance.fromJson(Map<String, dynamic> json) =
      _$_BSIssuance.fromJson;

  @override
  String? get txid;
  @override
  int? get vin;
  @override
  @JsonKey(ignore: true)
  _$$_BSIssuanceCopyWith<_$_BSIssuance> get copyWith =>
      throw _privateConstructorUsedError;
}

BSStatus _$BSStatusFromJson(Map<String, dynamic> json) {
  return _BSStatus.fromJson(json);
}

/// @nodoc
mixin _$BSStatus {
  bool? get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_height')
  int? get blockHeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_hash')
  String? get blockHash => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_time')
  int? get blockTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BSStatusCopyWith<BSStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BSStatusCopyWith<$Res> {
  factory $BSStatusCopyWith(BSStatus value, $Res Function(BSStatus) then) =
      _$BSStatusCopyWithImpl<$Res, BSStatus>;
  @useResult
  $Res call(
      {bool? confirmed,
      @JsonKey(name: 'block_height') int? blockHeight,
      @JsonKey(name: 'block_hash') String? blockHash,
      @JsonKey(name: 'block_time') int? blockTime});
}

/// @nodoc
class _$BSStatusCopyWithImpl<$Res, $Val extends BSStatus>
    implements $BSStatusCopyWith<$Res> {
  _$BSStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmed = freezed,
    Object? blockHeight = freezed,
    Object? blockHash = freezed,
    Object? blockTime = freezed,
  }) {
    return _then(_value.copyWith(
      confirmed: freezed == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      blockHeight: freezed == blockHeight
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      blockHash: freezed == blockHash
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      blockTime: freezed == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BSStatusCopyWith<$Res> implements $BSStatusCopyWith<$Res> {
  factory _$$_BSStatusCopyWith(
          _$_BSStatus value, $Res Function(_$_BSStatus) then) =
      __$$_BSStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? confirmed,
      @JsonKey(name: 'block_height') int? blockHeight,
      @JsonKey(name: 'block_hash') String? blockHash,
      @JsonKey(name: 'block_time') int? blockTime});
}

/// @nodoc
class __$$_BSStatusCopyWithImpl<$Res>
    extends _$BSStatusCopyWithImpl<$Res, _$_BSStatus>
    implements _$$_BSStatusCopyWith<$Res> {
  __$$_BSStatusCopyWithImpl(
      _$_BSStatus _value, $Res Function(_$_BSStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmed = freezed,
    Object? blockHeight = freezed,
    Object? blockHash = freezed,
    Object? blockTime = freezed,
  }) {
    return _then(_$_BSStatus(
      confirmed: freezed == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      blockHeight: freezed == blockHeight
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      blockHash: freezed == blockHash
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      blockTime: freezed == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BSStatus implements _BSStatus {
  const _$_BSStatus(
      {this.confirmed,
      @JsonKey(name: 'block_height') this.blockHeight,
      @JsonKey(name: 'block_hash') this.blockHash,
      @JsonKey(name: 'block_time') this.blockTime});

  factory _$_BSStatus.fromJson(Map<String, dynamic> json) =>
      _$$_BSStatusFromJson(json);

  @override
  final bool? confirmed;
  @override
  @JsonKey(name: 'block_height')
  final int? blockHeight;
  @override
  @JsonKey(name: 'block_hash')
  final String? blockHash;
  @override
  @JsonKey(name: 'block_time')
  final int? blockTime;

  @override
  String toString() {
    return 'BSStatus(confirmed: $confirmed, blockHeight: $blockHeight, blockHash: $blockHash, blockTime: $blockTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BSStatus &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(other.blockHeight, blockHeight) ||
                other.blockHeight == blockHeight) &&
            (identical(other.blockHash, blockHash) ||
                other.blockHash == blockHash) &&
            (identical(other.blockTime, blockTime) ||
                other.blockTime == blockTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, confirmed, blockHeight, blockHash, blockTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BSStatusCopyWith<_$_BSStatus> get copyWith =>
      __$$_BSStatusCopyWithImpl<_$_BSStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BSStatusToJson(
      this,
    );
  }
}

abstract class _BSStatus implements BSStatus {
  const factory _BSStatus(
      {final bool? confirmed,
      @JsonKey(name: 'block_height') final int? blockHeight,
      @JsonKey(name: 'block_hash') final String? blockHash,
      @JsonKey(name: 'block_time') final int? blockTime}) = _$_BSStatus;

  factory _BSStatus.fromJson(Map<String, dynamic> json) = _$_BSStatus.fromJson;

  @override
  bool? get confirmed;
  @override
  @JsonKey(name: 'block_height')
  int? get blockHeight;
  @override
  @JsonKey(name: 'block_hash')
  String? get blockHash;
  @override
  @JsonKey(name: 'block_time')
  int? get blockTime;
  @override
  @JsonKey(ignore: true)
  _$$_BSStatusCopyWith<_$_BSStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

BSEntity _$BSEntityFromJson(Map<String, dynamic> json) {
  return _BSEntity.fromJson(json);
}

/// @nodoc
mixin _$BSEntity {
  String? get domain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BSEntityCopyWith<BSEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BSEntityCopyWith<$Res> {
  factory $BSEntityCopyWith(BSEntity value, $Res Function(BSEntity) then) =
      _$BSEntityCopyWithImpl<$Res, BSEntity>;
  @useResult
  $Res call({String? domain});
}

/// @nodoc
class _$BSEntityCopyWithImpl<$Res, $Val extends BSEntity>
    implements $BSEntityCopyWith<$Res> {
  _$BSEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domain = freezed,
  }) {
    return _then(_value.copyWith(
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BSEntityCopyWith<$Res> implements $BSEntityCopyWith<$Res> {
  factory _$$_BSEntityCopyWith(
          _$_BSEntity value, $Res Function(_$_BSEntity) then) =
      __$$_BSEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? domain});
}

/// @nodoc
class __$$_BSEntityCopyWithImpl<$Res>
    extends _$BSEntityCopyWithImpl<$Res, _$_BSEntity>
    implements _$$_BSEntityCopyWith<$Res> {
  __$$_BSEntityCopyWithImpl(
      _$_BSEntity _value, $Res Function(_$_BSEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domain = freezed,
  }) {
    return _then(_$_BSEntity(
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BSEntity implements _BSEntity {
  const _$_BSEntity({this.domain});

  factory _$_BSEntity.fromJson(Map<String, dynamic> json) =>
      _$$_BSEntityFromJson(json);

  @override
  final String? domain;

  @override
  String toString() {
    return 'BSEntity(domain: $domain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BSEntity &&
            (identical(other.domain, domain) || other.domain == domain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, domain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BSEntityCopyWith<_$_BSEntity> get copyWith =>
      __$$_BSEntityCopyWithImpl<_$_BSEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BSEntityToJson(
      this,
    );
  }
}

abstract class _BSEntity implements BSEntity {
  const factory _BSEntity({final String? domain}) = _$_BSEntity;

  factory _BSEntity.fromJson(Map<String, dynamic> json) = _$_BSEntity.fromJson;

  @override
  String? get domain;
  @override
  @JsonKey(ignore: true)
  _$$_BSEntityCopyWith<_$_BSEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

BSContract _$BSContractFromJson(Map<String, dynamic> json) {
  return _BSContract.fromJson(json);
}

/// @nodoc
mixin _$BSContract {
  BSEntity? get entity => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuer_pubkey')
  String? get issuerPubkey => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get precision => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BSContractCopyWith<BSContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BSContractCopyWith<$Res> {
  factory $BSContractCopyWith(
          BSContract value, $Res Function(BSContract) then) =
      _$BSContractCopyWithImpl<$Res, BSContract>;
  @useResult
  $Res call(
      {BSEntity? entity,
      @JsonKey(name: 'issuer_pubkey') String? issuerPubkey,
      String? name,
      int? precision,
      int? version});

  $BSEntityCopyWith<$Res>? get entity;
}

/// @nodoc
class _$BSContractCopyWithImpl<$Res, $Val extends BSContract>
    implements $BSContractCopyWith<$Res> {
  _$BSContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = freezed,
    Object? issuerPubkey = freezed,
    Object? name = freezed,
    Object? precision = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as BSEntity?,
      issuerPubkey: freezed == issuerPubkey
          ? _value.issuerPubkey
          : issuerPubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BSEntityCopyWith<$Res>? get entity {
    if (_value.entity == null) {
      return null;
    }

    return $BSEntityCopyWith<$Res>(_value.entity!, (value) {
      return _then(_value.copyWith(entity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BSContractCopyWith<$Res>
    implements $BSContractCopyWith<$Res> {
  factory _$$_BSContractCopyWith(
          _$_BSContract value, $Res Function(_$_BSContract) then) =
      __$$_BSContractCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BSEntity? entity,
      @JsonKey(name: 'issuer_pubkey') String? issuerPubkey,
      String? name,
      int? precision,
      int? version});

  @override
  $BSEntityCopyWith<$Res>? get entity;
}

/// @nodoc
class __$$_BSContractCopyWithImpl<$Res>
    extends _$BSContractCopyWithImpl<$Res, _$_BSContract>
    implements _$$_BSContractCopyWith<$Res> {
  __$$_BSContractCopyWithImpl(
      _$_BSContract _value, $Res Function(_$_BSContract) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = freezed,
    Object? issuerPubkey = freezed,
    Object? name = freezed,
    Object? precision = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_BSContract(
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as BSEntity?,
      issuerPubkey: freezed == issuerPubkey
          ? _value.issuerPubkey
          : issuerPubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BSContract implements _BSContract {
  const _$_BSContract(
      {this.entity,
      @JsonKey(name: 'issuer_pubkey') this.issuerPubkey,
      this.name,
      this.precision,
      this.version});

  factory _$_BSContract.fromJson(Map<String, dynamic> json) =>
      _$$_BSContractFromJson(json);

  @override
  final BSEntity? entity;
  @override
  @JsonKey(name: 'issuer_pubkey')
  final String? issuerPubkey;
  @override
  final String? name;
  @override
  final int? precision;
  @override
  final int? version;

  @override
  String toString() {
    return 'BSContract(entity: $entity, issuerPubkey: $issuerPubkey, name: $name, precision: $precision, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BSContract &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.issuerPubkey, issuerPubkey) ||
                other.issuerPubkey == issuerPubkey) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.precision, precision) ||
                other.precision == precision) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, entity, issuerPubkey, name, precision, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BSContractCopyWith<_$_BSContract> get copyWith =>
      __$$_BSContractCopyWithImpl<_$_BSContract>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BSContractToJson(
      this,
    );
  }
}

abstract class _BSContract implements BSContract {
  const factory _BSContract(
      {final BSEntity? entity,
      @JsonKey(name: 'issuer_pubkey') final String? issuerPubkey,
      final String? name,
      final int? precision,
      final int? version}) = _$_BSContract;

  factory _BSContract.fromJson(Map<String, dynamic> json) =
      _$_BSContract.fromJson;

  @override
  BSEntity? get entity;
  @override
  @JsonKey(name: 'issuer_pubkey')
  String? get issuerPubkey;
  @override
  String? get name;
  @override
  int? get precision;
  @override
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$_BSContractCopyWith<_$_BSContract> get copyWith =>
      throw _privateConstructorUsedError;
}

BSTransactionStatus _$BSTransactionStatusFromJson(Map<String, dynamic> json) {
  return _BSTransactionStatus.fromJson(json);
}

/// @nodoc
mixin _$BSTransactionStatus {
  bool? get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_height')
  int? get blockHeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_hash')
  String? get blockHash => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_time')
  int? get blockTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BSTransactionStatusCopyWith<BSTransactionStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BSTransactionStatusCopyWith<$Res> {
  factory $BSTransactionStatusCopyWith(
          BSTransactionStatus value, $Res Function(BSTransactionStatus) then) =
      _$BSTransactionStatusCopyWithImpl<$Res, BSTransactionStatus>;
  @useResult
  $Res call(
      {bool? confirmed,
      @JsonKey(name: 'block_height') int? blockHeight,
      @JsonKey(name: 'block_hash') String? blockHash,
      @JsonKey(name: 'block_time') int? blockTime});
}

/// @nodoc
class _$BSTransactionStatusCopyWithImpl<$Res, $Val extends BSTransactionStatus>
    implements $BSTransactionStatusCopyWith<$Res> {
  _$BSTransactionStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmed = freezed,
    Object? blockHeight = freezed,
    Object? blockHash = freezed,
    Object? blockTime = freezed,
  }) {
    return _then(_value.copyWith(
      confirmed: freezed == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      blockHeight: freezed == blockHeight
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      blockHash: freezed == blockHash
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      blockTime: freezed == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BSTransactionStatusCopyWith<$Res>
    implements $BSTransactionStatusCopyWith<$Res> {
  factory _$$_BSTransactionStatusCopyWith(_$_BSTransactionStatus value,
          $Res Function(_$_BSTransactionStatus) then) =
      __$$_BSTransactionStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? confirmed,
      @JsonKey(name: 'block_height') int? blockHeight,
      @JsonKey(name: 'block_hash') String? blockHash,
      @JsonKey(name: 'block_time') int? blockTime});
}

/// @nodoc
class __$$_BSTransactionStatusCopyWithImpl<$Res>
    extends _$BSTransactionStatusCopyWithImpl<$Res, _$_BSTransactionStatus>
    implements _$$_BSTransactionStatusCopyWith<$Res> {
  __$$_BSTransactionStatusCopyWithImpl(_$_BSTransactionStatus _value,
      $Res Function(_$_BSTransactionStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmed = freezed,
    Object? blockHeight = freezed,
    Object? blockHash = freezed,
    Object? blockTime = freezed,
  }) {
    return _then(_$_BSTransactionStatus(
      confirmed: freezed == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      blockHeight: freezed == blockHeight
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      blockHash: freezed == blockHash
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      blockTime: freezed == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BSTransactionStatus implements _BSTransactionStatus {
  const _$_BSTransactionStatus(
      {this.confirmed,
      @JsonKey(name: 'block_height') this.blockHeight,
      @JsonKey(name: 'block_hash') this.blockHash,
      @JsonKey(name: 'block_time') this.blockTime});

  factory _$_BSTransactionStatus.fromJson(Map<String, dynamic> json) =>
      _$$_BSTransactionStatusFromJson(json);

  @override
  final bool? confirmed;
  @override
  @JsonKey(name: 'block_height')
  final int? blockHeight;
  @override
  @JsonKey(name: 'block_hash')
  final String? blockHash;
  @override
  @JsonKey(name: 'block_time')
  final int? blockTime;

  @override
  String toString() {
    return 'BSTransactionStatus(confirmed: $confirmed, blockHeight: $blockHeight, blockHash: $blockHash, blockTime: $blockTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BSTransactionStatus &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(other.blockHeight, blockHeight) ||
                other.blockHeight == blockHeight) &&
            (identical(other.blockHash, blockHash) ||
                other.blockHash == blockHash) &&
            (identical(other.blockTime, blockTime) ||
                other.blockTime == blockTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, confirmed, blockHeight, blockHash, blockTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BSTransactionStatusCopyWith<_$_BSTransactionStatus> get copyWith =>
      __$$_BSTransactionStatusCopyWithImpl<_$_BSTransactionStatus>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BSTransactionStatusToJson(
      this,
    );
  }
}

abstract class _BSTransactionStatus implements BSTransactionStatus {
  const factory _BSTransactionStatus(
          {final bool? confirmed,
          @JsonKey(name: 'block_height') final int? blockHeight,
          @JsonKey(name: 'block_hash') final String? blockHash,
          @JsonKey(name: 'block_time') final int? blockTime}) =
      _$_BSTransactionStatus;

  factory _BSTransactionStatus.fromJson(Map<String, dynamic> json) =
      _$_BSTransactionStatus.fromJson;

  @override
  bool? get confirmed;
  @override
  @JsonKey(name: 'block_height')
  int? get blockHeight;
  @override
  @JsonKey(name: 'block_hash')
  String? get blockHash;
  @override
  @JsonKey(name: 'block_time')
  int? get blockTime;
  @override
  @JsonKey(ignore: true)
  _$$_BSTransactionStatusCopyWith<_$_BSTransactionStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

BSTransactionPegout _$BSTransactionPegoutFromJson(Map<String, dynamic> json) {
  return _BSTransactionPegout.fromJson(json);
}

/// @nodoc
mixin _$BSTransactionPegout {
  @JsonKey(name: 'genesis_hash')
  String? get genesisHash => throw _privateConstructorUsedError;
  String? get scriptpubkey => throw _privateConstructorUsedError;
  @JsonKey(name: 'scriptpubkey_asm')
  String? get scriptpubkeyAsm => throw _privateConstructorUsedError;
  @JsonKey(name: 'scriptpubkey_address')
  String? get scriptpubkeyAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BSTransactionPegoutCopyWith<BSTransactionPegout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BSTransactionPegoutCopyWith<$Res> {
  factory $BSTransactionPegoutCopyWith(
          BSTransactionPegout value, $Res Function(BSTransactionPegout) then) =
      _$BSTransactionPegoutCopyWithImpl<$Res, BSTransactionPegout>;
  @useResult
  $Res call(
      {@JsonKey(name: 'genesis_hash') String? genesisHash,
      String? scriptpubkey,
      @JsonKey(name: 'scriptpubkey_asm') String? scriptpubkeyAsm,
      @JsonKey(name: 'scriptpubkey_address') String? scriptpubkeyAddress});
}

/// @nodoc
class _$BSTransactionPegoutCopyWithImpl<$Res, $Val extends BSTransactionPegout>
    implements $BSTransactionPegoutCopyWith<$Res> {
  _$BSTransactionPegoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genesisHash = freezed,
    Object? scriptpubkey = freezed,
    Object? scriptpubkeyAsm = freezed,
    Object? scriptpubkeyAddress = freezed,
  }) {
    return _then(_value.copyWith(
      genesisHash: freezed == genesisHash
          ? _value.genesisHash
          : genesisHash // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptpubkey: freezed == scriptpubkey
          ? _value.scriptpubkey
          : scriptpubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptpubkeyAsm: freezed == scriptpubkeyAsm
          ? _value.scriptpubkeyAsm
          : scriptpubkeyAsm // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptpubkeyAddress: freezed == scriptpubkeyAddress
          ? _value.scriptpubkeyAddress
          : scriptpubkeyAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BSTransactionPegoutCopyWith<$Res>
    implements $BSTransactionPegoutCopyWith<$Res> {
  factory _$$_BSTransactionPegoutCopyWith(_$_BSTransactionPegout value,
          $Res Function(_$_BSTransactionPegout) then) =
      __$$_BSTransactionPegoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'genesis_hash') String? genesisHash,
      String? scriptpubkey,
      @JsonKey(name: 'scriptpubkey_asm') String? scriptpubkeyAsm,
      @JsonKey(name: 'scriptpubkey_address') String? scriptpubkeyAddress});
}

/// @nodoc
class __$$_BSTransactionPegoutCopyWithImpl<$Res>
    extends _$BSTransactionPegoutCopyWithImpl<$Res, _$_BSTransactionPegout>
    implements _$$_BSTransactionPegoutCopyWith<$Res> {
  __$$_BSTransactionPegoutCopyWithImpl(_$_BSTransactionPegout _value,
      $Res Function(_$_BSTransactionPegout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genesisHash = freezed,
    Object? scriptpubkey = freezed,
    Object? scriptpubkeyAsm = freezed,
    Object? scriptpubkeyAddress = freezed,
  }) {
    return _then(_$_BSTransactionPegout(
      genesisHash: freezed == genesisHash
          ? _value.genesisHash
          : genesisHash // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptpubkey: freezed == scriptpubkey
          ? _value.scriptpubkey
          : scriptpubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptpubkeyAsm: freezed == scriptpubkeyAsm
          ? _value.scriptpubkeyAsm
          : scriptpubkeyAsm // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptpubkeyAddress: freezed == scriptpubkeyAddress
          ? _value.scriptpubkeyAddress
          : scriptpubkeyAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BSTransactionPegout implements _BSTransactionPegout {
  const _$_BSTransactionPegout(
      {@JsonKey(name: 'genesis_hash') this.genesisHash,
      this.scriptpubkey,
      @JsonKey(name: 'scriptpubkey_asm') this.scriptpubkeyAsm,
      @JsonKey(name: 'scriptpubkey_address') this.scriptpubkeyAddress});

  factory _$_BSTransactionPegout.fromJson(Map<String, dynamic> json) =>
      _$$_BSTransactionPegoutFromJson(json);

  @override
  @JsonKey(name: 'genesis_hash')
  final String? genesisHash;
  @override
  final String? scriptpubkey;
  @override
  @JsonKey(name: 'scriptpubkey_asm')
  final String? scriptpubkeyAsm;
  @override
  @JsonKey(name: 'scriptpubkey_address')
  final String? scriptpubkeyAddress;

  @override
  String toString() {
    return 'BSTransactionPegout(genesisHash: $genesisHash, scriptpubkey: $scriptpubkey, scriptpubkeyAsm: $scriptpubkeyAsm, scriptpubkeyAddress: $scriptpubkeyAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BSTransactionPegout &&
            (identical(other.genesisHash, genesisHash) ||
                other.genesisHash == genesisHash) &&
            (identical(other.scriptpubkey, scriptpubkey) ||
                other.scriptpubkey == scriptpubkey) &&
            (identical(other.scriptpubkeyAsm, scriptpubkeyAsm) ||
                other.scriptpubkeyAsm == scriptpubkeyAsm) &&
            (identical(other.scriptpubkeyAddress, scriptpubkeyAddress) ||
                other.scriptpubkeyAddress == scriptpubkeyAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, genesisHash, scriptpubkey,
      scriptpubkeyAsm, scriptpubkeyAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BSTransactionPegoutCopyWith<_$_BSTransactionPegout> get copyWith =>
      __$$_BSTransactionPegoutCopyWithImpl<_$_BSTransactionPegout>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BSTransactionPegoutToJson(
      this,
    );
  }
}

abstract class _BSTransactionPegout implements BSTransactionPegout {
  const factory _BSTransactionPegout(
      {@JsonKey(name: 'genesis_hash')
          final String? genesisHash,
      final String? scriptpubkey,
      @JsonKey(name: 'scriptpubkey_asm')
          final String? scriptpubkeyAsm,
      @JsonKey(name: 'scriptpubkey_address')
          final String? scriptpubkeyAddress}) = _$_BSTransactionPegout;

  factory _BSTransactionPegout.fromJson(Map<String, dynamic> json) =
      _$_BSTransactionPegout.fromJson;

  @override
  @JsonKey(name: 'genesis_hash')
  String? get genesisHash;
  @override
  String? get scriptpubkey;
  @override
  @JsonKey(name: 'scriptpubkey_asm')
  String? get scriptpubkeyAsm;
  @override
  @JsonKey(name: 'scriptpubkey_address')
  String? get scriptpubkeyAddress;
  @override
  @JsonKey(ignore: true)
  _$$_BSTransactionPegoutCopyWith<_$_BSTransactionPegout> get copyWith =>
      throw _privateConstructorUsedError;
}

BSVout _$BSVoutFromJson(Map<String, dynamic> json) {
  return _BSVout.fromJson(json);
}

/// @nodoc
mixin _$BSVout {
  String? get scriptpubkey => throw _privateConstructorUsedError;
  @JsonKey(name: 'scriptpubkey_asm')
  String? get scriptpubkeyAsm => throw _privateConstructorUsedError;
  @JsonKey(name: 'scriptpubkey_type')
  String? get scriptpubkeyType => throw _privateConstructorUsedError;
  @JsonKey(name: 'scriptpubkey_address')
  String? get scriptpubkeyAddress => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;
  String? get valuecommitment => throw _privateConstructorUsedError;
  String? get asset => throw _privateConstructorUsedError;
  String? get assetcommitment => throw _privateConstructorUsedError;
  BSTransactionPegout? get pegout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BSVoutCopyWith<BSVout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BSVoutCopyWith<$Res> {
  factory $BSVoutCopyWith(BSVout value, $Res Function(BSVout) then) =
      _$BSVoutCopyWithImpl<$Res, BSVout>;
  @useResult
  $Res call(
      {String? scriptpubkey,
      @JsonKey(name: 'scriptpubkey_asm') String? scriptpubkeyAsm,
      @JsonKey(name: 'scriptpubkey_type') String? scriptpubkeyType,
      @JsonKey(name: 'scriptpubkey_address') String? scriptpubkeyAddress,
      int? value,
      String? valuecommitment,
      String? asset,
      String? assetcommitment,
      BSTransactionPegout? pegout});

  $BSTransactionPegoutCopyWith<$Res>? get pegout;
}

/// @nodoc
class _$BSVoutCopyWithImpl<$Res, $Val extends BSVout>
    implements $BSVoutCopyWith<$Res> {
  _$BSVoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scriptpubkey = freezed,
    Object? scriptpubkeyAsm = freezed,
    Object? scriptpubkeyType = freezed,
    Object? scriptpubkeyAddress = freezed,
    Object? value = freezed,
    Object? valuecommitment = freezed,
    Object? asset = freezed,
    Object? assetcommitment = freezed,
    Object? pegout = freezed,
  }) {
    return _then(_value.copyWith(
      scriptpubkey: freezed == scriptpubkey
          ? _value.scriptpubkey
          : scriptpubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptpubkeyAsm: freezed == scriptpubkeyAsm
          ? _value.scriptpubkeyAsm
          : scriptpubkeyAsm // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptpubkeyType: freezed == scriptpubkeyType
          ? _value.scriptpubkeyType
          : scriptpubkeyType // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptpubkeyAddress: freezed == scriptpubkeyAddress
          ? _value.scriptpubkeyAddress
          : scriptpubkeyAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      valuecommitment: freezed == valuecommitment
          ? _value.valuecommitment
          : valuecommitment // ignore: cast_nullable_to_non_nullable
              as String?,
      asset: freezed == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      assetcommitment: freezed == assetcommitment
          ? _value.assetcommitment
          : assetcommitment // ignore: cast_nullable_to_non_nullable
              as String?,
      pegout: freezed == pegout
          ? _value.pegout
          : pegout // ignore: cast_nullable_to_non_nullable
              as BSTransactionPegout?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BSTransactionPegoutCopyWith<$Res>? get pegout {
    if (_value.pegout == null) {
      return null;
    }

    return $BSTransactionPegoutCopyWith<$Res>(_value.pegout!, (value) {
      return _then(_value.copyWith(pegout: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BSVoutCopyWith<$Res> implements $BSVoutCopyWith<$Res> {
  factory _$$_BSVoutCopyWith(_$_BSVout value, $Res Function(_$_BSVout) then) =
      __$$_BSVoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? scriptpubkey,
      @JsonKey(name: 'scriptpubkey_asm') String? scriptpubkeyAsm,
      @JsonKey(name: 'scriptpubkey_type') String? scriptpubkeyType,
      @JsonKey(name: 'scriptpubkey_address') String? scriptpubkeyAddress,
      int? value,
      String? valuecommitment,
      String? asset,
      String? assetcommitment,
      BSTransactionPegout? pegout});

  @override
  $BSTransactionPegoutCopyWith<$Res>? get pegout;
}

/// @nodoc
class __$$_BSVoutCopyWithImpl<$Res>
    extends _$BSVoutCopyWithImpl<$Res, _$_BSVout>
    implements _$$_BSVoutCopyWith<$Res> {
  __$$_BSVoutCopyWithImpl(_$_BSVout _value, $Res Function(_$_BSVout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scriptpubkey = freezed,
    Object? scriptpubkeyAsm = freezed,
    Object? scriptpubkeyType = freezed,
    Object? scriptpubkeyAddress = freezed,
    Object? value = freezed,
    Object? valuecommitment = freezed,
    Object? asset = freezed,
    Object? assetcommitment = freezed,
    Object? pegout = freezed,
  }) {
    return _then(_$_BSVout(
      scriptpubkey: freezed == scriptpubkey
          ? _value.scriptpubkey
          : scriptpubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptpubkeyAsm: freezed == scriptpubkeyAsm
          ? _value.scriptpubkeyAsm
          : scriptpubkeyAsm // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptpubkeyType: freezed == scriptpubkeyType
          ? _value.scriptpubkeyType
          : scriptpubkeyType // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptpubkeyAddress: freezed == scriptpubkeyAddress
          ? _value.scriptpubkeyAddress
          : scriptpubkeyAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      valuecommitment: freezed == valuecommitment
          ? _value.valuecommitment
          : valuecommitment // ignore: cast_nullable_to_non_nullable
              as String?,
      asset: freezed == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      assetcommitment: freezed == assetcommitment
          ? _value.assetcommitment
          : assetcommitment // ignore: cast_nullable_to_non_nullable
              as String?,
      pegout: freezed == pegout
          ? _value.pegout
          : pegout // ignore: cast_nullable_to_non_nullable
              as BSTransactionPegout?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BSVout implements _BSVout {
  const _$_BSVout(
      {this.scriptpubkey,
      @JsonKey(name: 'scriptpubkey_asm') this.scriptpubkeyAsm,
      @JsonKey(name: 'scriptpubkey_type') this.scriptpubkeyType,
      @JsonKey(name: 'scriptpubkey_address') this.scriptpubkeyAddress,
      this.value,
      this.valuecommitment,
      this.asset,
      this.assetcommitment,
      this.pegout});

  factory _$_BSVout.fromJson(Map<String, dynamic> json) =>
      _$$_BSVoutFromJson(json);

  @override
  final String? scriptpubkey;
  @override
  @JsonKey(name: 'scriptpubkey_asm')
  final String? scriptpubkeyAsm;
  @override
  @JsonKey(name: 'scriptpubkey_type')
  final String? scriptpubkeyType;
  @override
  @JsonKey(name: 'scriptpubkey_address')
  final String? scriptpubkeyAddress;
  @override
  final int? value;
  @override
  final String? valuecommitment;
  @override
  final String? asset;
  @override
  final String? assetcommitment;
  @override
  final BSTransactionPegout? pegout;

  @override
  String toString() {
    return 'BSVout(scriptpubkey: $scriptpubkey, scriptpubkeyAsm: $scriptpubkeyAsm, scriptpubkeyType: $scriptpubkeyType, scriptpubkeyAddress: $scriptpubkeyAddress, value: $value, valuecommitment: $valuecommitment, asset: $asset, assetcommitment: $assetcommitment, pegout: $pegout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BSVout &&
            (identical(other.scriptpubkey, scriptpubkey) ||
                other.scriptpubkey == scriptpubkey) &&
            (identical(other.scriptpubkeyAsm, scriptpubkeyAsm) ||
                other.scriptpubkeyAsm == scriptpubkeyAsm) &&
            (identical(other.scriptpubkeyType, scriptpubkeyType) ||
                other.scriptpubkeyType == scriptpubkeyType) &&
            (identical(other.scriptpubkeyAddress, scriptpubkeyAddress) ||
                other.scriptpubkeyAddress == scriptpubkeyAddress) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valuecommitment, valuecommitment) ||
                other.valuecommitment == valuecommitment) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.assetcommitment, assetcommitment) ||
                other.assetcommitment == assetcommitment) &&
            (identical(other.pegout, pegout) || other.pegout == pegout));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      scriptpubkey,
      scriptpubkeyAsm,
      scriptpubkeyType,
      scriptpubkeyAddress,
      value,
      valuecommitment,
      asset,
      assetcommitment,
      pegout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BSVoutCopyWith<_$_BSVout> get copyWith =>
      __$$_BSVoutCopyWithImpl<_$_BSVout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BSVoutToJson(
      this,
    );
  }
}

abstract class _BSVout implements BSVout {
  const factory _BSVout(
      {final String? scriptpubkey,
      @JsonKey(name: 'scriptpubkey_asm') final String? scriptpubkeyAsm,
      @JsonKey(name: 'scriptpubkey_type') final String? scriptpubkeyType,
      @JsonKey(name: 'scriptpubkey_address') final String? scriptpubkeyAddress,
      final int? value,
      final String? valuecommitment,
      final String? asset,
      final String? assetcommitment,
      final BSTransactionPegout? pegout}) = _$_BSVout;

  factory _BSVout.fromJson(Map<String, dynamic> json) = _$_BSVout.fromJson;

  @override
  String? get scriptpubkey;
  @override
  @JsonKey(name: 'scriptpubkey_asm')
  String? get scriptpubkeyAsm;
  @override
  @JsonKey(name: 'scriptpubkey_type')
  String? get scriptpubkeyType;
  @override
  @JsonKey(name: 'scriptpubkey_address')
  String? get scriptpubkeyAddress;
  @override
  int? get value;
  @override
  String? get valuecommitment;
  @override
  String? get asset;
  @override
  String? get assetcommitment;
  @override
  BSTransactionPegout? get pegout;
  @override
  @JsonKey(ignore: true)
  _$$_BSVoutCopyWith<_$_BSVout> get copyWith =>
      throw _privateConstructorUsedError;
}

BSTransactionIssuance _$BSTransactionIssuanceFromJson(
    Map<String, dynamic> json) {
  return _BSTransactionIssuance.fromJson(json);
}

/// @nodoc
mixin _$BSTransactionIssuance {
  @JsonKey(name: 'asset_id')
  String? get assetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_reissuance')
  bool? get isReissuance => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_blinding_nonce')
  String? get assetBlindingNonce => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_entropy')
  String? get assetEntropy => throw _privateConstructorUsedError;
  @JsonKey(name: 'contract_hash')
  String? get contractHash => throw _privateConstructorUsedError;
  int? get assetamount => throw _privateConstructorUsedError;
  int? get assetamountcommitment => throw _privateConstructorUsedError;
  int? get tokenamount => throw _privateConstructorUsedError;
  int? get tokenamountcommitment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BSTransactionIssuanceCopyWith<BSTransactionIssuance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BSTransactionIssuanceCopyWith<$Res> {
  factory $BSTransactionIssuanceCopyWith(BSTransactionIssuance value,
          $Res Function(BSTransactionIssuance) then) =
      _$BSTransactionIssuanceCopyWithImpl<$Res, BSTransactionIssuance>;
  @useResult
  $Res call(
      {@JsonKey(name: 'asset_id') String? assetId,
      @JsonKey(name: 'is_reissuance') bool? isReissuance,
      @JsonKey(name: 'asset_blinding_nonce') String? assetBlindingNonce,
      @JsonKey(name: 'asset_entropy') String? assetEntropy,
      @JsonKey(name: 'contract_hash') String? contractHash,
      int? assetamount,
      int? assetamountcommitment,
      int? tokenamount,
      int? tokenamountcommitment});
}

/// @nodoc
class _$BSTransactionIssuanceCopyWithImpl<$Res,
        $Val extends BSTransactionIssuance>
    implements $BSTransactionIssuanceCopyWith<$Res> {
  _$BSTransactionIssuanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetId = freezed,
    Object? isReissuance = freezed,
    Object? assetBlindingNonce = freezed,
    Object? assetEntropy = freezed,
    Object? contractHash = freezed,
    Object? assetamount = freezed,
    Object? assetamountcommitment = freezed,
    Object? tokenamount = freezed,
    Object? tokenamountcommitment = freezed,
  }) {
    return _then(_value.copyWith(
      assetId: freezed == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
      isReissuance: freezed == isReissuance
          ? _value.isReissuance
          : isReissuance // ignore: cast_nullable_to_non_nullable
              as bool?,
      assetBlindingNonce: freezed == assetBlindingNonce
          ? _value.assetBlindingNonce
          : assetBlindingNonce // ignore: cast_nullable_to_non_nullable
              as String?,
      assetEntropy: freezed == assetEntropy
          ? _value.assetEntropy
          : assetEntropy // ignore: cast_nullable_to_non_nullable
              as String?,
      contractHash: freezed == contractHash
          ? _value.contractHash
          : contractHash // ignore: cast_nullable_to_non_nullable
              as String?,
      assetamount: freezed == assetamount
          ? _value.assetamount
          : assetamount // ignore: cast_nullable_to_non_nullable
              as int?,
      assetamountcommitment: freezed == assetamountcommitment
          ? _value.assetamountcommitment
          : assetamountcommitment // ignore: cast_nullable_to_non_nullable
              as int?,
      tokenamount: freezed == tokenamount
          ? _value.tokenamount
          : tokenamount // ignore: cast_nullable_to_non_nullable
              as int?,
      tokenamountcommitment: freezed == tokenamountcommitment
          ? _value.tokenamountcommitment
          : tokenamountcommitment // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BSTransactionIssuanceCopyWith<$Res>
    implements $BSTransactionIssuanceCopyWith<$Res> {
  factory _$$_BSTransactionIssuanceCopyWith(_$_BSTransactionIssuance value,
          $Res Function(_$_BSTransactionIssuance) then) =
      __$$_BSTransactionIssuanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'asset_id') String? assetId,
      @JsonKey(name: 'is_reissuance') bool? isReissuance,
      @JsonKey(name: 'asset_blinding_nonce') String? assetBlindingNonce,
      @JsonKey(name: 'asset_entropy') String? assetEntropy,
      @JsonKey(name: 'contract_hash') String? contractHash,
      int? assetamount,
      int? assetamountcommitment,
      int? tokenamount,
      int? tokenamountcommitment});
}

/// @nodoc
class __$$_BSTransactionIssuanceCopyWithImpl<$Res>
    extends _$BSTransactionIssuanceCopyWithImpl<$Res, _$_BSTransactionIssuance>
    implements _$$_BSTransactionIssuanceCopyWith<$Res> {
  __$$_BSTransactionIssuanceCopyWithImpl(_$_BSTransactionIssuance _value,
      $Res Function(_$_BSTransactionIssuance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetId = freezed,
    Object? isReissuance = freezed,
    Object? assetBlindingNonce = freezed,
    Object? assetEntropy = freezed,
    Object? contractHash = freezed,
    Object? assetamount = freezed,
    Object? assetamountcommitment = freezed,
    Object? tokenamount = freezed,
    Object? tokenamountcommitment = freezed,
  }) {
    return _then(_$_BSTransactionIssuance(
      assetId: freezed == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
      isReissuance: freezed == isReissuance
          ? _value.isReissuance
          : isReissuance // ignore: cast_nullable_to_non_nullable
              as bool?,
      assetBlindingNonce: freezed == assetBlindingNonce
          ? _value.assetBlindingNonce
          : assetBlindingNonce // ignore: cast_nullable_to_non_nullable
              as String?,
      assetEntropy: freezed == assetEntropy
          ? _value.assetEntropy
          : assetEntropy // ignore: cast_nullable_to_non_nullable
              as String?,
      contractHash: freezed == contractHash
          ? _value.contractHash
          : contractHash // ignore: cast_nullable_to_non_nullable
              as String?,
      assetamount: freezed == assetamount
          ? _value.assetamount
          : assetamount // ignore: cast_nullable_to_non_nullable
              as int?,
      assetamountcommitment: freezed == assetamountcommitment
          ? _value.assetamountcommitment
          : assetamountcommitment // ignore: cast_nullable_to_non_nullable
              as int?,
      tokenamount: freezed == tokenamount
          ? _value.tokenamount
          : tokenamount // ignore: cast_nullable_to_non_nullable
              as int?,
      tokenamountcommitment: freezed == tokenamountcommitment
          ? _value.tokenamountcommitment
          : tokenamountcommitment // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BSTransactionIssuance implements _BSTransactionIssuance {
  const _$_BSTransactionIssuance(
      {@JsonKey(name: 'asset_id') this.assetId,
      @JsonKey(name: 'is_reissuance') this.isReissuance,
      @JsonKey(name: 'asset_blinding_nonce') this.assetBlindingNonce,
      @JsonKey(name: 'asset_entropy') this.assetEntropy,
      @JsonKey(name: 'contract_hash') this.contractHash,
      this.assetamount,
      this.assetamountcommitment,
      this.tokenamount,
      this.tokenamountcommitment});

  factory _$_BSTransactionIssuance.fromJson(Map<String, dynamic> json) =>
      _$$_BSTransactionIssuanceFromJson(json);

  @override
  @JsonKey(name: 'asset_id')
  final String? assetId;
  @override
  @JsonKey(name: 'is_reissuance')
  final bool? isReissuance;
  @override
  @JsonKey(name: 'asset_blinding_nonce')
  final String? assetBlindingNonce;
  @override
  @JsonKey(name: 'asset_entropy')
  final String? assetEntropy;
  @override
  @JsonKey(name: 'contract_hash')
  final String? contractHash;
  @override
  final int? assetamount;
  @override
  final int? assetamountcommitment;
  @override
  final int? tokenamount;
  @override
  final int? tokenamountcommitment;

  @override
  String toString() {
    return 'BSTransactionIssuance(assetId: $assetId, isReissuance: $isReissuance, assetBlindingNonce: $assetBlindingNonce, assetEntropy: $assetEntropy, contractHash: $contractHash, assetamount: $assetamount, assetamountcommitment: $assetamountcommitment, tokenamount: $tokenamount, tokenamountcommitment: $tokenamountcommitment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BSTransactionIssuance &&
            (identical(other.assetId, assetId) || other.assetId == assetId) &&
            (identical(other.isReissuance, isReissuance) ||
                other.isReissuance == isReissuance) &&
            (identical(other.assetBlindingNonce, assetBlindingNonce) ||
                other.assetBlindingNonce == assetBlindingNonce) &&
            (identical(other.assetEntropy, assetEntropy) ||
                other.assetEntropy == assetEntropy) &&
            (identical(other.contractHash, contractHash) ||
                other.contractHash == contractHash) &&
            (identical(other.assetamount, assetamount) ||
                other.assetamount == assetamount) &&
            (identical(other.assetamountcommitment, assetamountcommitment) ||
                other.assetamountcommitment == assetamountcommitment) &&
            (identical(other.tokenamount, tokenamount) ||
                other.tokenamount == tokenamount) &&
            (identical(other.tokenamountcommitment, tokenamountcommitment) ||
                other.tokenamountcommitment == tokenamountcommitment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      assetId,
      isReissuance,
      assetBlindingNonce,
      assetEntropy,
      contractHash,
      assetamount,
      assetamountcommitment,
      tokenamount,
      tokenamountcommitment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BSTransactionIssuanceCopyWith<_$_BSTransactionIssuance> get copyWith =>
      __$$_BSTransactionIssuanceCopyWithImpl<_$_BSTransactionIssuance>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BSTransactionIssuanceToJson(
      this,
    );
  }
}

abstract class _BSTransactionIssuance implements BSTransactionIssuance {
  const factory _BSTransactionIssuance(
      {@JsonKey(name: 'asset_id') final String? assetId,
      @JsonKey(name: 'is_reissuance') final bool? isReissuance,
      @JsonKey(name: 'asset_blinding_nonce') final String? assetBlindingNonce,
      @JsonKey(name: 'asset_entropy') final String? assetEntropy,
      @JsonKey(name: 'contract_hash') final String? contractHash,
      final int? assetamount,
      final int? assetamountcommitment,
      final int? tokenamount,
      final int? tokenamountcommitment}) = _$_BSTransactionIssuance;

  factory _BSTransactionIssuance.fromJson(Map<String, dynamic> json) =
      _$_BSTransactionIssuance.fromJson;

  @override
  @JsonKey(name: 'asset_id')
  String? get assetId;
  @override
  @JsonKey(name: 'is_reissuance')
  bool? get isReissuance;
  @override
  @JsonKey(name: 'asset_blinding_nonce')
  String? get assetBlindingNonce;
  @override
  @JsonKey(name: 'asset_entropy')
  String? get assetEntropy;
  @override
  @JsonKey(name: 'contract_hash')
  String? get contractHash;
  @override
  int? get assetamount;
  @override
  int? get assetamountcommitment;
  @override
  int? get tokenamount;
  @override
  int? get tokenamountcommitment;
  @override
  @JsonKey(ignore: true)
  _$$_BSTransactionIssuanceCopyWith<_$_BSTransactionIssuance> get copyWith =>
      throw _privateConstructorUsedError;
}

BSVin _$BSVinFromJson(Map<String, dynamic> json) {
  return _BSVin.fromJson(json);
}

/// @nodoc
mixin _$BSVin {
  String? get txid => throw _privateConstructorUsedError;
  int? get vout => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_coinbase')
  bool? get isCoinbase => throw _privateConstructorUsedError;
  String? get scriptsig => throw _privateConstructorUsedError;
  @JsonKey(name: 'scriptsig_asm')
  String? get scriptsigAsm => throw _privateConstructorUsedError;
  @JsonKey(name: 'inner_redeemscript_asm')
  String? get innerRedeemScriptAsm => throw _privateConstructorUsedError;
  @JsonKey(name: 'inner_witnessscript_asm')
  String? get innerWitnessScriptAsm => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  List<String>? get witness => throw _privateConstructorUsedError;
  BSVout? get prevout => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_pegin')
  bool? get isPegIn => throw _privateConstructorUsedError;
  BSTransactionIssuance? get issuance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BSVinCopyWith<BSVin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BSVinCopyWith<$Res> {
  factory $BSVinCopyWith(BSVin value, $Res Function(BSVin) then) =
      _$BSVinCopyWithImpl<$Res, BSVin>;
  @useResult
  $Res call(
      {String? txid,
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
      BSTransactionIssuance? issuance});

  $BSVoutCopyWith<$Res>? get prevout;
  $BSTransactionIssuanceCopyWith<$Res>? get issuance;
}

/// @nodoc
class _$BSVinCopyWithImpl<$Res, $Val extends BSVin>
    implements $BSVinCopyWith<$Res> {
  _$BSVinCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txid = freezed,
    Object? vout = freezed,
    Object? isCoinbase = freezed,
    Object? scriptsig = freezed,
    Object? scriptsigAsm = freezed,
    Object? innerRedeemScriptAsm = freezed,
    Object? innerWitnessScriptAsm = freezed,
    Object? sequence = freezed,
    Object? witness = freezed,
    Object? prevout = freezed,
    Object? isPegIn = freezed,
    Object? issuance = freezed,
  }) {
    return _then(_value.copyWith(
      txid: freezed == txid
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String?,
      vout: freezed == vout
          ? _value.vout
          : vout // ignore: cast_nullable_to_non_nullable
              as int?,
      isCoinbase: freezed == isCoinbase
          ? _value.isCoinbase
          : isCoinbase // ignore: cast_nullable_to_non_nullable
              as bool?,
      scriptsig: freezed == scriptsig
          ? _value.scriptsig
          : scriptsig // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptsigAsm: freezed == scriptsigAsm
          ? _value.scriptsigAsm
          : scriptsigAsm // ignore: cast_nullable_to_non_nullable
              as String?,
      innerRedeemScriptAsm: freezed == innerRedeemScriptAsm
          ? _value.innerRedeemScriptAsm
          : innerRedeemScriptAsm // ignore: cast_nullable_to_non_nullable
              as String?,
      innerWitnessScriptAsm: freezed == innerWitnessScriptAsm
          ? _value.innerWitnessScriptAsm
          : innerWitnessScriptAsm // ignore: cast_nullable_to_non_nullable
              as String?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      witness: freezed == witness
          ? _value.witness
          : witness // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      prevout: freezed == prevout
          ? _value.prevout
          : prevout // ignore: cast_nullable_to_non_nullable
              as BSVout?,
      isPegIn: freezed == isPegIn
          ? _value.isPegIn
          : isPegIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      issuance: freezed == issuance
          ? _value.issuance
          : issuance // ignore: cast_nullable_to_non_nullable
              as BSTransactionIssuance?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BSVoutCopyWith<$Res>? get prevout {
    if (_value.prevout == null) {
      return null;
    }

    return $BSVoutCopyWith<$Res>(_value.prevout!, (value) {
      return _then(_value.copyWith(prevout: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BSTransactionIssuanceCopyWith<$Res>? get issuance {
    if (_value.issuance == null) {
      return null;
    }

    return $BSTransactionIssuanceCopyWith<$Res>(_value.issuance!, (value) {
      return _then(_value.copyWith(issuance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BSVinCopyWith<$Res> implements $BSVinCopyWith<$Res> {
  factory _$$_BSVinCopyWith(_$_BSVin value, $Res Function(_$_BSVin) then) =
      __$$_BSVinCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? txid,
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
      BSTransactionIssuance? issuance});

  @override
  $BSVoutCopyWith<$Res>? get prevout;
  @override
  $BSTransactionIssuanceCopyWith<$Res>? get issuance;
}

/// @nodoc
class __$$_BSVinCopyWithImpl<$Res> extends _$BSVinCopyWithImpl<$Res, _$_BSVin>
    implements _$$_BSVinCopyWith<$Res> {
  __$$_BSVinCopyWithImpl(_$_BSVin _value, $Res Function(_$_BSVin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txid = freezed,
    Object? vout = freezed,
    Object? isCoinbase = freezed,
    Object? scriptsig = freezed,
    Object? scriptsigAsm = freezed,
    Object? innerRedeemScriptAsm = freezed,
    Object? innerWitnessScriptAsm = freezed,
    Object? sequence = freezed,
    Object? witness = freezed,
    Object? prevout = freezed,
    Object? isPegIn = freezed,
    Object? issuance = freezed,
  }) {
    return _then(_$_BSVin(
      txid: freezed == txid
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String?,
      vout: freezed == vout
          ? _value.vout
          : vout // ignore: cast_nullable_to_non_nullable
              as int?,
      isCoinbase: freezed == isCoinbase
          ? _value.isCoinbase
          : isCoinbase // ignore: cast_nullable_to_non_nullable
              as bool?,
      scriptsig: freezed == scriptsig
          ? _value.scriptsig
          : scriptsig // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptsigAsm: freezed == scriptsigAsm
          ? _value.scriptsigAsm
          : scriptsigAsm // ignore: cast_nullable_to_non_nullable
              as String?,
      innerRedeemScriptAsm: freezed == innerRedeemScriptAsm
          ? _value.innerRedeemScriptAsm
          : innerRedeemScriptAsm // ignore: cast_nullable_to_non_nullable
              as String?,
      innerWitnessScriptAsm: freezed == innerWitnessScriptAsm
          ? _value.innerWitnessScriptAsm
          : innerWitnessScriptAsm // ignore: cast_nullable_to_non_nullable
              as String?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      witness: freezed == witness
          ? _value._witness
          : witness // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      prevout: freezed == prevout
          ? _value.prevout
          : prevout // ignore: cast_nullable_to_non_nullable
              as BSVout?,
      isPegIn: freezed == isPegIn
          ? _value.isPegIn
          : isPegIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      issuance: freezed == issuance
          ? _value.issuance
          : issuance // ignore: cast_nullable_to_non_nullable
              as BSTransactionIssuance?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BSVin implements _BSVin {
  const _$_BSVin(
      {this.txid,
      this.vout,
      @JsonKey(name: 'is_coinbase') this.isCoinbase,
      this.scriptsig,
      @JsonKey(name: 'scriptsig_asm') this.scriptsigAsm,
      @JsonKey(name: 'inner_redeemscript_asm') this.innerRedeemScriptAsm,
      @JsonKey(name: 'inner_witnessscript_asm') this.innerWitnessScriptAsm,
      this.sequence,
      final List<String>? witness,
      this.prevout,
      @JsonKey(name: 'is_pegin') this.isPegIn,
      this.issuance})
      : _witness = witness;

  factory _$_BSVin.fromJson(Map<String, dynamic> json) =>
      _$$_BSVinFromJson(json);

  @override
  final String? txid;
  @override
  final int? vout;
  @override
  @JsonKey(name: 'is_coinbase')
  final bool? isCoinbase;
  @override
  final String? scriptsig;
  @override
  @JsonKey(name: 'scriptsig_asm')
  final String? scriptsigAsm;
  @override
  @JsonKey(name: 'inner_redeemscript_asm')
  final String? innerRedeemScriptAsm;
  @override
  @JsonKey(name: 'inner_witnessscript_asm')
  final String? innerWitnessScriptAsm;
  @override
  final int? sequence;
  final List<String>? _witness;
  @override
  List<String>? get witness {
    final value = _witness;
    if (value == null) return null;
    if (_witness is EqualUnmodifiableListView) return _witness;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BSVout? prevout;
  @override
  @JsonKey(name: 'is_pegin')
  final bool? isPegIn;
  @override
  final BSTransactionIssuance? issuance;

  @override
  String toString() {
    return 'BSVin(txid: $txid, vout: $vout, isCoinbase: $isCoinbase, scriptsig: $scriptsig, scriptsigAsm: $scriptsigAsm, innerRedeemScriptAsm: $innerRedeemScriptAsm, innerWitnessScriptAsm: $innerWitnessScriptAsm, sequence: $sequence, witness: $witness, prevout: $prevout, isPegIn: $isPegIn, issuance: $issuance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BSVin &&
            (identical(other.txid, txid) || other.txid == txid) &&
            (identical(other.vout, vout) || other.vout == vout) &&
            (identical(other.isCoinbase, isCoinbase) ||
                other.isCoinbase == isCoinbase) &&
            (identical(other.scriptsig, scriptsig) ||
                other.scriptsig == scriptsig) &&
            (identical(other.scriptsigAsm, scriptsigAsm) ||
                other.scriptsigAsm == scriptsigAsm) &&
            (identical(other.innerRedeemScriptAsm, innerRedeemScriptAsm) ||
                other.innerRedeemScriptAsm == innerRedeemScriptAsm) &&
            (identical(other.innerWitnessScriptAsm, innerWitnessScriptAsm) ||
                other.innerWitnessScriptAsm == innerWitnessScriptAsm) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            const DeepCollectionEquality().equals(other._witness, _witness) &&
            (identical(other.prevout, prevout) || other.prevout == prevout) &&
            (identical(other.isPegIn, isPegIn) || other.isPegIn == isPegIn) &&
            (identical(other.issuance, issuance) ||
                other.issuance == issuance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      txid,
      vout,
      isCoinbase,
      scriptsig,
      scriptsigAsm,
      innerRedeemScriptAsm,
      innerWitnessScriptAsm,
      sequence,
      const DeepCollectionEquality().hash(_witness),
      prevout,
      isPegIn,
      issuance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BSVinCopyWith<_$_BSVin> get copyWith =>
      __$$_BSVinCopyWithImpl<_$_BSVin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BSVinToJson(
      this,
    );
  }
}

abstract class _BSVin implements BSVin {
  const factory _BSVin(
      {final String? txid,
      final int? vout,
      @JsonKey(name: 'is_coinbase')
          final bool? isCoinbase,
      final String? scriptsig,
      @JsonKey(name: 'scriptsig_asm')
          final String? scriptsigAsm,
      @JsonKey(name: 'inner_redeemscript_asm')
          final String? innerRedeemScriptAsm,
      @JsonKey(name: 'inner_witnessscript_asm')
          final String? innerWitnessScriptAsm,
      final int? sequence,
      final List<String>? witness,
      final BSVout? prevout,
      @JsonKey(name: 'is_pegin')
          final bool? isPegIn,
      final BSTransactionIssuance? issuance}) = _$_BSVin;

  factory _BSVin.fromJson(Map<String, dynamic> json) = _$_BSVin.fromJson;

  @override
  String? get txid;
  @override
  int? get vout;
  @override
  @JsonKey(name: 'is_coinbase')
  bool? get isCoinbase;
  @override
  String? get scriptsig;
  @override
  @JsonKey(name: 'scriptsig_asm')
  String? get scriptsigAsm;
  @override
  @JsonKey(name: 'inner_redeemscript_asm')
  String? get innerRedeemScriptAsm;
  @override
  @JsonKey(name: 'inner_witnessscript_asm')
  String? get innerWitnessScriptAsm;
  @override
  int? get sequence;
  @override
  List<String>? get witness;
  @override
  BSVout? get prevout;
  @override
  @JsonKey(name: 'is_pegin')
  bool? get isPegIn;
  @override
  BSTransactionIssuance? get issuance;
  @override
  @JsonKey(ignore: true)
  _$$_BSVinCopyWith<_$_BSVin> get copyWith =>
      throw _privateConstructorUsedError;
}

BSTransaction _$BSTransactionFromJson(Map<String, dynamic> json) {
  return _BSTransaction.fromJson(json);
}

/// @nodoc
mixin _$BSTransaction {
  String? get txid => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;
  int? get locktime => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  int? get fee => throw _privateConstructorUsedError;
  List<BSVin>? get vin => throw _privateConstructorUsedError;
  List<BSVout>? get vout => throw _privateConstructorUsedError;
  BSStatus? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BSTransactionCopyWith<BSTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BSTransactionCopyWith<$Res> {
  factory $BSTransactionCopyWith(
          BSTransaction value, $Res Function(BSTransaction) then) =
      _$BSTransactionCopyWithImpl<$Res, BSTransaction>;
  @useResult
  $Res call(
      {String? txid,
      int? version,
      int? locktime,
      int? size,
      int? weight,
      int? fee,
      List<BSVin>? vin,
      List<BSVout>? vout,
      BSStatus? status});

  $BSStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$BSTransactionCopyWithImpl<$Res, $Val extends BSTransaction>
    implements $BSTransactionCopyWith<$Res> {
  _$BSTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txid = freezed,
    Object? version = freezed,
    Object? locktime = freezed,
    Object? size = freezed,
    Object? weight = freezed,
    Object? fee = freezed,
    Object? vin = freezed,
    Object? vout = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      txid: freezed == txid
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      locktime: freezed == locktime
          ? _value.locktime
          : locktime // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      vin: freezed == vin
          ? _value.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as List<BSVin>?,
      vout: freezed == vout
          ? _value.vout
          : vout // ignore: cast_nullable_to_non_nullable
              as List<BSVout>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BSStatus?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BSStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $BSStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BSTransactionCopyWith<$Res>
    implements $BSTransactionCopyWith<$Res> {
  factory _$$_BSTransactionCopyWith(
          _$_BSTransaction value, $Res Function(_$_BSTransaction) then) =
      __$$_BSTransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? txid,
      int? version,
      int? locktime,
      int? size,
      int? weight,
      int? fee,
      List<BSVin>? vin,
      List<BSVout>? vout,
      BSStatus? status});

  @override
  $BSStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_BSTransactionCopyWithImpl<$Res>
    extends _$BSTransactionCopyWithImpl<$Res, _$_BSTransaction>
    implements _$$_BSTransactionCopyWith<$Res> {
  __$$_BSTransactionCopyWithImpl(
      _$_BSTransaction _value, $Res Function(_$_BSTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txid = freezed,
    Object? version = freezed,
    Object? locktime = freezed,
    Object? size = freezed,
    Object? weight = freezed,
    Object? fee = freezed,
    Object? vin = freezed,
    Object? vout = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_BSTransaction(
      txid: freezed == txid
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      locktime: freezed == locktime
          ? _value.locktime
          : locktime // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      vin: freezed == vin
          ? _value._vin
          : vin // ignore: cast_nullable_to_non_nullable
              as List<BSVin>?,
      vout: freezed == vout
          ? _value._vout
          : vout // ignore: cast_nullable_to_non_nullable
              as List<BSVout>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BSStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BSTransaction implements _BSTransaction {
  const _$_BSTransaction(
      {this.txid,
      this.version,
      this.locktime,
      this.size,
      this.weight,
      this.fee,
      final List<BSVin>? vin,
      final List<BSVout>? vout,
      this.status})
      : _vin = vin,
        _vout = vout;

  factory _$_BSTransaction.fromJson(Map<String, dynamic> json) =>
      _$$_BSTransactionFromJson(json);

  @override
  final String? txid;
  @override
  final int? version;
  @override
  final int? locktime;
  @override
  final int? size;
  @override
  final int? weight;
  @override
  final int? fee;
  final List<BSVin>? _vin;
  @override
  List<BSVin>? get vin {
    final value = _vin;
    if (value == null) return null;
    if (_vin is EqualUnmodifiableListView) return _vin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BSVout>? _vout;
  @override
  List<BSVout>? get vout {
    final value = _vout;
    if (value == null) return null;
    if (_vout is EqualUnmodifiableListView) return _vout;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BSStatus? status;

  @override
  String toString() {
    return 'BSTransaction(txid: $txid, version: $version, locktime: $locktime, size: $size, weight: $weight, fee: $fee, vin: $vin, vout: $vout, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BSTransaction &&
            (identical(other.txid, txid) || other.txid == txid) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.locktime, locktime) ||
                other.locktime == locktime) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            const DeepCollectionEquality().equals(other._vin, _vin) &&
            const DeepCollectionEquality().equals(other._vout, _vout) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      txid,
      version,
      locktime,
      size,
      weight,
      fee,
      const DeepCollectionEquality().hash(_vin),
      const DeepCollectionEquality().hash(_vout),
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BSTransactionCopyWith<_$_BSTransaction> get copyWith =>
      __$$_BSTransactionCopyWithImpl<_$_BSTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BSTransactionToJson(
      this,
    );
  }
}

abstract class _BSTransaction implements BSTransaction {
  const factory _BSTransaction(
      {final String? txid,
      final int? version,
      final int? locktime,
      final int? size,
      final int? weight,
      final int? fee,
      final List<BSVin>? vin,
      final List<BSVout>? vout,
      final BSStatus? status}) = _$_BSTransaction;

  factory _BSTransaction.fromJson(Map<String, dynamic> json) =
      _$_BSTransaction.fromJson;

  @override
  String? get txid;
  @override
  int? get version;
  @override
  int? get locktime;
  @override
  int? get size;
  @override
  int? get weight;
  @override
  int? get fee;
  @override
  List<BSVin>? get vin;
  @override
  List<BSVout>? get vout;
  @override
  BSStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$_BSTransactionCopyWith<_$_BSTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}
