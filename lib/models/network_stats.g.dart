// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_stats.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNetworkStatsCollection on Isar {
  IsarCollection<NetworkStats> get networkStats => this.collection();
}

const NetworkStatsSchema = CollectionSchema(
  name: r'NetworkStats',
  id: 4529228731264875308,
  properties: {
    r'lbtcIssuance': PropertySchema(
      id: 0,
      name: r'lbtcIssuance',
      type: IsarType.object,
      target: r'NSLBTCIssuance',
    ),
    r'network': PropertySchema(
      id: 1,
      name: r'network',
      type: IsarType.object,
      target: r'NSNetwork',
    ),
    r'pegIn': PropertySchema(
      id: 2,
      name: r'pegIn',
      type: IsarType.object,
      target: r'NSPegIn',
    ),
    r'pegOut': PropertySchema(
      id: 3,
      name: r'pegOut',
      type: IsarType.object,
      target: r'NSPegOut',
    ),
    r'swaps': PropertySchema(
      id: 4,
      name: r'swaps',
      type: IsarType.object,
      target: r'NSSwaps',
    ),
    r'transactions': PropertySchema(
      id: 5,
      name: r'transactions',
      type: IsarType.object,
      target: r'NSTransactions',
    )
  },
  estimateSize: _networkStatsEstimateSize,
  serialize: _networkStatsSerialize,
  deserialize: _networkStatsDeserialize,
  deserializeProp: _networkStatsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'NSLBTCIssuance': NSLBTCIssuanceSchema,
    r'NSNetwork': NSNetworkSchema,
    r'NSPegIn': NSPegInSchema,
    r'NSPegOut': NSPegOutSchema,
    r'NSTransactions': NSTransactionsSchema,
    r'NSSwaps': NSSwapsSchema
  },
  getId: _networkStatsGetId,
  getLinks: _networkStatsGetLinks,
  attach: _networkStatsAttach,
  version: '3.1.0+1',
);

int _networkStatsEstimateSize(
  NetworkStats object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.lbtcIssuance;
    if (value != null) {
      bytesCount += 3 +
          NSLBTCIssuanceSchema.estimateSize(
              value, allOffsets[NSLBTCIssuance]!, allOffsets);
    }
  }
  {
    final value = object.network;
    if (value != null) {
      bytesCount += 3 +
          NSNetworkSchema.estimateSize(
              value, allOffsets[NSNetwork]!, allOffsets);
    }
  }
  {
    final value = object.pegIn;
    if (value != null) {
      bytesCount += 3 +
          NSPegInSchema.estimateSize(value, allOffsets[NSPegIn]!, allOffsets);
    }
  }
  {
    final value = object.pegOut;
    if (value != null) {
      bytesCount += 3 +
          NSPegOutSchema.estimateSize(value, allOffsets[NSPegOut]!, allOffsets);
    }
  }
  {
    final value = object.swaps;
    if (value != null) {
      bytesCount += 3 +
          NSSwapsSchema.estimateSize(value, allOffsets[NSSwaps]!, allOffsets);
    }
  }
  {
    final value = object.transactions;
    if (value != null) {
      bytesCount += 3 +
          NSTransactionsSchema.estimateSize(
              value, allOffsets[NSTransactions]!, allOffsets);
    }
  }
  return bytesCount;
}

void _networkStatsSerialize(
  NetworkStats object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<NSLBTCIssuance>(
    offsets[0],
    allOffsets,
    NSLBTCIssuanceSchema.serialize,
    object.lbtcIssuance,
  );
  writer.writeObject<NSNetwork>(
    offsets[1],
    allOffsets,
    NSNetworkSchema.serialize,
    object.network,
  );
  writer.writeObject<NSPegIn>(
    offsets[2],
    allOffsets,
    NSPegInSchema.serialize,
    object.pegIn,
  );
  writer.writeObject<NSPegOut>(
    offsets[3],
    allOffsets,
    NSPegOutSchema.serialize,
    object.pegOut,
  );
  writer.writeObject<NSSwaps>(
    offsets[4],
    allOffsets,
    NSSwapsSchema.serialize,
    object.swaps,
  );
  writer.writeObject<NSTransactions>(
    offsets[5],
    allOffsets,
    NSTransactionsSchema.serialize,
    object.transactions,
  );
}

NetworkStats _networkStatsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NetworkStats(
    id: id,
    lbtcIssuance: reader.readObjectOrNull<NSLBTCIssuance>(
      offsets[0],
      NSLBTCIssuanceSchema.deserialize,
      allOffsets,
    ),
    network: reader.readObjectOrNull<NSNetwork>(
      offsets[1],
      NSNetworkSchema.deserialize,
      allOffsets,
    ),
    pegIn: reader.readObjectOrNull<NSPegIn>(
      offsets[2],
      NSPegInSchema.deserialize,
      allOffsets,
    ),
    pegOut: reader.readObjectOrNull<NSPegOut>(
      offsets[3],
      NSPegOutSchema.deserialize,
      allOffsets,
    ),
    swaps: reader.readObjectOrNull<NSSwaps>(
      offsets[4],
      NSSwapsSchema.deserialize,
      allOffsets,
    ),
    transactions: reader.readObjectOrNull<NSTransactions>(
      offsets[5],
      NSTransactionsSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _networkStatsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<NSLBTCIssuance>(
        offset,
        NSLBTCIssuanceSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectOrNull<NSNetwork>(
        offset,
        NSNetworkSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readObjectOrNull<NSPegIn>(
        offset,
        NSPegInSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readObjectOrNull<NSPegOut>(
        offset,
        NSPegOutSchema.deserialize,
        allOffsets,
      )) as P;
    case 4:
      return (reader.readObjectOrNull<NSSwaps>(
        offset,
        NSSwapsSchema.deserialize,
        allOffsets,
      )) as P;
    case 5:
      return (reader.readObjectOrNull<NSTransactions>(
        offset,
        NSTransactionsSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _networkStatsGetId(NetworkStats object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _networkStatsGetLinks(NetworkStats object) {
  return [];
}

void _networkStatsAttach(
    IsarCollection<dynamic> col, Id id, NetworkStats object) {
  object.id = id;
}

extension NetworkStatsQueryWhereSort
    on QueryBuilder<NetworkStats, NetworkStats, QWhere> {
  QueryBuilder<NetworkStats, NetworkStats, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension NetworkStatsQueryWhere
    on QueryBuilder<NetworkStats, NetworkStats, QWhereClause> {
  QueryBuilder<NetworkStats, NetworkStats, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NetworkStatsQueryFilter
    on QueryBuilder<NetworkStats, NetworkStats, QFilterCondition> {
  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition>
      lbtcIssuanceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lbtcIssuance',
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition>
      lbtcIssuanceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lbtcIssuance',
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition>
      networkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'network',
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition>
      networkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'network',
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition>
      pegInIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegIn',
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition>
      pegInIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegIn',
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition>
      pegOutIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegOut',
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition>
      pegOutIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegOut',
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition>
      swapsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'swaps',
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition>
      swapsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'swaps',
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition>
      transactionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transactions',
      ));
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition>
      transactionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transactions',
      ));
    });
  }
}

extension NetworkStatsQueryObject
    on QueryBuilder<NetworkStats, NetworkStats, QFilterCondition> {
  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition> lbtcIssuance(
      FilterQuery<NSLBTCIssuance> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'lbtcIssuance');
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition> network(
      FilterQuery<NSNetwork> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'network');
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition> pegIn(
      FilterQuery<NSPegIn> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'pegIn');
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition> pegOut(
      FilterQuery<NSPegOut> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'pegOut');
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition> swaps(
      FilterQuery<NSSwaps> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'swaps');
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterFilterCondition> transactions(
      FilterQuery<NSTransactions> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'transactions');
    });
  }
}

extension NetworkStatsQueryLinks
    on QueryBuilder<NetworkStats, NetworkStats, QFilterCondition> {}

extension NetworkStatsQuerySortBy
    on QueryBuilder<NetworkStats, NetworkStats, QSortBy> {}

extension NetworkStatsQuerySortThenBy
    on QueryBuilder<NetworkStats, NetworkStats, QSortThenBy> {
  QueryBuilder<NetworkStats, NetworkStats, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NetworkStats, NetworkStats, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension NetworkStatsQueryWhereDistinct
    on QueryBuilder<NetworkStats, NetworkStats, QDistinct> {}

extension NetworkStatsQueryProperty
    on QueryBuilder<NetworkStats, NetworkStats, QQueryProperty> {
  QueryBuilder<NetworkStats, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NetworkStats, NSLBTCIssuance?, QQueryOperations>
      lbtcIssuanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lbtcIssuance');
    });
  }

  QueryBuilder<NetworkStats, NSNetwork?, QQueryOperations> networkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'network');
    });
  }

  QueryBuilder<NetworkStats, NSPegIn?, QQueryOperations> pegInProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pegIn');
    });
  }

  QueryBuilder<NetworkStats, NSPegOut?, QQueryOperations> pegOutProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pegOut');
    });
  }

  QueryBuilder<NetworkStats, NSSwaps?, QQueryOperations> swapsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'swaps');
    });
  }

  QueryBuilder<NetworkStats, NSTransactions?, QQueryOperations>
      transactionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transactions');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNSBlockCollection on Isar {
  IsarCollection<NSBlock> get nSBlocks => this.collection();
}

const NSBlockSchema = CollectionSchema(
  name: r'NSBlock',
  id: -2248564792922144220,
  properties: {
    r'blockHash': PropertySchema(
      id: 0,
      name: r'blockHash',
      type: IsarType.string,
    ),
    r'blockHeight': PropertySchema(
      id: 1,
      name: r'blockHeight',
      type: IsarType.long,
    ),
    r'burnCount': PropertySchema(
      id: 2,
      name: r'burnCount',
      type: IsarType.long,
    ),
    r'burnVolume': PropertySchema(
      id: 3,
      name: r'burnVolume',
      type: IsarType.long,
    ),
    r'isEmpty': PropertySchema(
      id: 4,
      name: r'isEmpty',
      type: IsarType.bool,
    ),
    r'pegInCount': PropertySchema(
      id: 5,
      name: r'pegInCount',
      type: IsarType.long,
    ),
    r'pegInVolume': PropertySchema(
      id: 6,
      name: r'pegInVolume',
      type: IsarType.long,
    ),
    r'pegOutCount': PropertySchema(
      id: 7,
      name: r'pegOutCount',
      type: IsarType.long,
    ),
    r'pegOutVolume': PropertySchema(
      id: 8,
      name: r'pegOutVolume',
      type: IsarType.long,
    ),
    r'swapCount': PropertySchema(
      id: 9,
      name: r'swapCount',
      type: IsarType.long,
    ),
    r'txCount': PropertySchema(
      id: 10,
      name: r'txCount',
      type: IsarType.long,
    )
  },
  estimateSize: _nSBlockEstimateSize,
  serialize: _nSBlockSerialize,
  deserialize: _nSBlockDeserialize,
  deserializeProp: _nSBlockDeserializeProp,
  idName: r'id',
  indexes: {
    r'blockHeight': IndexSchema(
      id: -7712182092526905689,
      name: r'blockHeight',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'blockHeight',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _nSBlockGetId,
  getLinks: _nSBlockGetLinks,
  attach: _nSBlockAttach,
  version: '3.1.0+1',
);

int _nSBlockEstimateSize(
  NSBlock object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.blockHash;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _nSBlockSerialize(
  NSBlock object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.blockHash);
  writer.writeLong(offsets[1], object.blockHeight);
  writer.writeLong(offsets[2], object.burnCount);
  writer.writeLong(offsets[3], object.burnVolume);
  writer.writeBool(offsets[4], object.isEmpty);
  writer.writeLong(offsets[5], object.pegInCount);
  writer.writeLong(offsets[6], object.pegInVolume);
  writer.writeLong(offsets[7], object.pegOutCount);
  writer.writeLong(offsets[8], object.pegOutVolume);
  writer.writeLong(offsets[9], object.swapCount);
  writer.writeLong(offsets[10], object.txCount);
}

NSBlock _nSBlockDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NSBlock(
    blockHash: reader.readStringOrNull(offsets[0]),
    blockHeight: reader.readLongOrNull(offsets[1]),
    burnCount: reader.readLongOrNull(offsets[2]),
    burnVolume: reader.readLongOrNull(offsets[3]),
    id: id,
    pegInCount: reader.readLongOrNull(offsets[5]),
    pegInVolume: reader.readLongOrNull(offsets[6]),
    pegOutCount: reader.readLongOrNull(offsets[7]),
    pegOutVolume: reader.readLongOrNull(offsets[8]),
    swapCount: reader.readLongOrNull(offsets[9]),
    txCount: reader.readLongOrNull(offsets[10]),
  );
  return object;
}

P _nSBlockDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _nSBlockGetId(NSBlock object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _nSBlockGetLinks(NSBlock object) {
  return [];
}

void _nSBlockAttach(IsarCollection<dynamic> col, Id id, NSBlock object) {
  object.id = id;
}

extension NSBlockByIndex on IsarCollection<NSBlock> {
  Future<NSBlock?> getByBlockHeight(int? blockHeight) {
    return getByIndex(r'blockHeight', [blockHeight]);
  }

  NSBlock? getByBlockHeightSync(int? blockHeight) {
    return getByIndexSync(r'blockHeight', [blockHeight]);
  }

  Future<bool> deleteByBlockHeight(int? blockHeight) {
    return deleteByIndex(r'blockHeight', [blockHeight]);
  }

  bool deleteByBlockHeightSync(int? blockHeight) {
    return deleteByIndexSync(r'blockHeight', [blockHeight]);
  }

  Future<List<NSBlock?>> getAllByBlockHeight(List<int?> blockHeightValues) {
    final values = blockHeightValues.map((e) => [e]).toList();
    return getAllByIndex(r'blockHeight', values);
  }

  List<NSBlock?> getAllByBlockHeightSync(List<int?> blockHeightValues) {
    final values = blockHeightValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'blockHeight', values);
  }

  Future<int> deleteAllByBlockHeight(List<int?> blockHeightValues) {
    final values = blockHeightValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'blockHeight', values);
  }

  int deleteAllByBlockHeightSync(List<int?> blockHeightValues) {
    final values = blockHeightValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'blockHeight', values);
  }

  Future<Id> putByBlockHeight(NSBlock object) {
    return putByIndex(r'blockHeight', object);
  }

  Id putByBlockHeightSync(NSBlock object, {bool saveLinks = true}) {
    return putByIndexSync(r'blockHeight', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByBlockHeight(List<NSBlock> objects) {
    return putAllByIndex(r'blockHeight', objects);
  }

  List<Id> putAllByBlockHeightSync(List<NSBlock> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'blockHeight', objects, saveLinks: saveLinks);
  }
}

extension NSBlockQueryWhereSort on QueryBuilder<NSBlock, NSBlock, QWhere> {
  QueryBuilder<NSBlock, NSBlock, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterWhere> anyBlockHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'blockHeight'),
      );
    });
  }
}

extension NSBlockQueryWhere on QueryBuilder<NSBlock, NSBlock, QWhereClause> {
  QueryBuilder<NSBlock, NSBlock, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterWhereClause> blockHeightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'blockHeight',
        value: [null],
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterWhereClause> blockHeightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'blockHeight',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterWhereClause> blockHeightEqualTo(
      int? blockHeight) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'blockHeight',
        value: [blockHeight],
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterWhereClause> blockHeightNotEqualTo(
      int? blockHeight) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'blockHeight',
              lower: [],
              upper: [blockHeight],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'blockHeight',
              lower: [blockHeight],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'blockHeight',
              lower: [blockHeight],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'blockHeight',
              lower: [],
              upper: [blockHeight],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterWhereClause> blockHeightGreaterThan(
    int? blockHeight, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'blockHeight',
        lower: [blockHeight],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterWhereClause> blockHeightLessThan(
    int? blockHeight, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'blockHeight',
        lower: [],
        upper: [blockHeight],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterWhereClause> blockHeightBetween(
    int? lowerBlockHeight,
    int? upperBlockHeight, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'blockHeight',
        lower: [lowerBlockHeight],
        includeLower: includeLower,
        upper: [upperBlockHeight],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NSBlockQueryFilter
    on QueryBuilder<NSBlock, NSBlock, QFilterCondition> {
  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHashIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'blockHash',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHashIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'blockHash',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHashEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blockHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHashGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'blockHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHashLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'blockHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHashBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'blockHash',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHashStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'blockHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHashEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'blockHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHashContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'blockHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHashMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'blockHash',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHashIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blockHash',
        value: '',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHashIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'blockHash',
        value: '',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHeightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'blockHeight',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHeightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'blockHeight',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHeightEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blockHeight',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHeightGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'blockHeight',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHeightLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'blockHeight',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> blockHeightBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'blockHeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> burnCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'burnCount',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> burnCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'burnCount',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> burnCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'burnCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> burnCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'burnCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> burnCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'burnCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> burnCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'burnCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> burnVolumeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'burnVolume',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> burnVolumeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'burnVolume',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> burnVolumeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'burnVolume',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> burnVolumeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'burnVolume',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> burnVolumeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'burnVolume',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> burnVolumeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'burnVolume',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> isEmptyEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isEmpty',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegInCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegInCount',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegInCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegInCount',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegInCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegInCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegInCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegInCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegInCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegInCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegInCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegInCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegInVolumeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegInVolume',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegInVolumeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegInVolume',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegInVolumeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegInVolume',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegInVolumeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegInVolume',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegInVolumeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegInVolume',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegInVolumeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegInVolume',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegOutCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegOutCount',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegOutCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegOutCount',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegOutCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegOutCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegOutCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegOutCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegOutCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegOutCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegOutCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegOutCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegOutVolumeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegOutVolume',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition>
      pegOutVolumeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegOutVolume',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegOutVolumeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegOutVolume',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegOutVolumeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegOutVolume',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegOutVolumeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegOutVolume',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> pegOutVolumeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegOutVolume',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> swapCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'swapCount',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> swapCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'swapCount',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> swapCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'swapCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> swapCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'swapCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> swapCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'swapCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> swapCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'swapCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> txCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'txCount',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> txCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'txCount',
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> txCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'txCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> txCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'txCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> txCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'txCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterFilterCondition> txCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'txCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NSBlockQueryObject
    on QueryBuilder<NSBlock, NSBlock, QFilterCondition> {}

extension NSBlockQueryLinks
    on QueryBuilder<NSBlock, NSBlock, QFilterCondition> {}

extension NSBlockQuerySortBy on QueryBuilder<NSBlock, NSBlock, QSortBy> {
  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByBlockHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockHash', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByBlockHashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockHash', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByBlockHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockHeight', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByBlockHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockHeight', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByBurnCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'burnCount', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByBurnCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'burnCount', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByBurnVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'burnVolume', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByBurnVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'burnVolume', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEmpty', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByIsEmptyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEmpty', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByPegInCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegInCount', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByPegInCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegInCount', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByPegInVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegInVolume', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByPegInVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegInVolume', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByPegOutCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegOutCount', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByPegOutCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegOutCount', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByPegOutVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegOutVolume', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByPegOutVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegOutVolume', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortBySwapCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'swapCount', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortBySwapCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'swapCount', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByTxCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'txCount', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> sortByTxCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'txCount', Sort.desc);
    });
  }
}

extension NSBlockQuerySortThenBy
    on QueryBuilder<NSBlock, NSBlock, QSortThenBy> {
  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByBlockHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockHash', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByBlockHashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockHash', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByBlockHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockHeight', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByBlockHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockHeight', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByBurnCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'burnCount', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByBurnCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'burnCount', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByBurnVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'burnVolume', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByBurnVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'burnVolume', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEmpty', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByIsEmptyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEmpty', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByPegInCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegInCount', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByPegInCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegInCount', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByPegInVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegInVolume', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByPegInVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegInVolume', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByPegOutCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegOutCount', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByPegOutCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegOutCount', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByPegOutVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegOutVolume', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByPegOutVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pegOutVolume', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenBySwapCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'swapCount', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenBySwapCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'swapCount', Sort.desc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByTxCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'txCount', Sort.asc);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QAfterSortBy> thenByTxCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'txCount', Sort.desc);
    });
  }
}

extension NSBlockQueryWhereDistinct
    on QueryBuilder<NSBlock, NSBlock, QDistinct> {
  QueryBuilder<NSBlock, NSBlock, QDistinct> distinctByBlockHash(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'blockHash', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NSBlock, NSBlock, QDistinct> distinctByBlockHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'blockHeight');
    });
  }

  QueryBuilder<NSBlock, NSBlock, QDistinct> distinctByBurnCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'burnCount');
    });
  }

  QueryBuilder<NSBlock, NSBlock, QDistinct> distinctByBurnVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'burnVolume');
    });
  }

  QueryBuilder<NSBlock, NSBlock, QDistinct> distinctByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isEmpty');
    });
  }

  QueryBuilder<NSBlock, NSBlock, QDistinct> distinctByPegInCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pegInCount');
    });
  }

  QueryBuilder<NSBlock, NSBlock, QDistinct> distinctByPegInVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pegInVolume');
    });
  }

  QueryBuilder<NSBlock, NSBlock, QDistinct> distinctByPegOutCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pegOutCount');
    });
  }

  QueryBuilder<NSBlock, NSBlock, QDistinct> distinctByPegOutVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pegOutVolume');
    });
  }

  QueryBuilder<NSBlock, NSBlock, QDistinct> distinctBySwapCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'swapCount');
    });
  }

  QueryBuilder<NSBlock, NSBlock, QDistinct> distinctByTxCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'txCount');
    });
  }
}

extension NSBlockQueryProperty
    on QueryBuilder<NSBlock, NSBlock, QQueryProperty> {
  QueryBuilder<NSBlock, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NSBlock, String?, QQueryOperations> blockHashProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'blockHash');
    });
  }

  QueryBuilder<NSBlock, int?, QQueryOperations> blockHeightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'blockHeight');
    });
  }

  QueryBuilder<NSBlock, int?, QQueryOperations> burnCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'burnCount');
    });
  }

  QueryBuilder<NSBlock, int?, QQueryOperations> burnVolumeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'burnVolume');
    });
  }

  QueryBuilder<NSBlock, bool, QQueryOperations> isEmptyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isEmpty');
    });
  }

  QueryBuilder<NSBlock, int?, QQueryOperations> pegInCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pegInCount');
    });
  }

  QueryBuilder<NSBlock, int?, QQueryOperations> pegInVolumeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pegInVolume');
    });
  }

  QueryBuilder<NSBlock, int?, QQueryOperations> pegOutCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pegOutCount');
    });
  }

  QueryBuilder<NSBlock, int?, QQueryOperations> pegOutVolumeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pegOutVolume');
    });
  }

  QueryBuilder<NSBlock, int?, QQueryOperations> swapCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'swapCount');
    });
  }

  QueryBuilder<NSBlock, int?, QQueryOperations> txCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'txCount');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const NSLBTCIssuanceSchema = Schema(
  name: r'NSLBTCIssuance',
  id: 3937575867217319580,
  properties: {
    r'circulatingAmount': PropertySchema(
      id: 0,
      name: r'circulatingAmount',
      type: IsarType.long,
    ),
    r'issuedAmount': PropertySchema(
      id: 1,
      name: r'issuedAmount',
      type: IsarType.long,
    ),
    r'pegoutBurnAmount': PropertySchema(
      id: 2,
      name: r'pegoutBurnAmount',
      type: IsarType.long,
    )
  },
  estimateSize: _nSLBTCIssuanceEstimateSize,
  serialize: _nSLBTCIssuanceSerialize,
  deserialize: _nSLBTCIssuanceDeserialize,
  deserializeProp: _nSLBTCIssuanceDeserializeProp,
);

int _nSLBTCIssuanceEstimateSize(
  NSLBTCIssuance object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _nSLBTCIssuanceSerialize(
  NSLBTCIssuance object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.circulatingAmount);
  writer.writeLong(offsets[1], object.issuedAmount);
  writer.writeLong(offsets[2], object.pegoutBurnAmount);
}

NSLBTCIssuance _nSLBTCIssuanceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NSLBTCIssuance(
    circulatingAmount: reader.readLongOrNull(offsets[0]),
    issuedAmount: reader.readLongOrNull(offsets[1]),
    pegoutBurnAmount: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _nSLBTCIssuanceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension NSLBTCIssuanceQueryFilter
    on QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QFilterCondition> {
  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      circulatingAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'circulatingAmount',
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      circulatingAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'circulatingAmount',
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      circulatingAmountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'circulatingAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      circulatingAmountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'circulatingAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      circulatingAmountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'circulatingAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      circulatingAmountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'circulatingAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      issuedAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'issuedAmount',
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      issuedAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'issuedAmount',
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      issuedAmountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'issuedAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      issuedAmountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'issuedAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      issuedAmountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'issuedAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      issuedAmountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'issuedAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      pegoutBurnAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegoutBurnAmount',
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      pegoutBurnAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegoutBurnAmount',
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      pegoutBurnAmountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegoutBurnAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      pegoutBurnAmountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegoutBurnAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      pegoutBurnAmountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegoutBurnAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      pegoutBurnAmountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegoutBurnAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NSLBTCIssuanceQueryObject
    on QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const NSNetworkSchema = Schema(
  name: r'NSNetwork',
  id: 69447630030997066,
  properties: {
    r'currentBlockHeight': PropertySchema(
      id: 0,
      name: r'currentBlockHeight',
      type: IsarType.long,
    ),
    r'issuedAssets': PropertySchema(
      id: 1,
      name: r'issuedAssets',
      type: IsarType.long,
    ),
    r'issuedSecurities': PropertySchema(
      id: 2,
      name: r'issuedSecurities',
      type: IsarType.long,
    )
  },
  estimateSize: _nSNetworkEstimateSize,
  serialize: _nSNetworkSerialize,
  deserialize: _nSNetworkDeserialize,
  deserializeProp: _nSNetworkDeserializeProp,
);

int _nSNetworkEstimateSize(
  NSNetwork object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _nSNetworkSerialize(
  NSNetwork object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.currentBlockHeight);
  writer.writeLong(offsets[1], object.issuedAssets);
  writer.writeLong(offsets[2], object.issuedSecurities);
}

NSNetwork _nSNetworkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NSNetwork(
    currentBlockHeight: reader.readLongOrNull(offsets[0]),
    issuedAssets: reader.readLongOrNull(offsets[1]),
    issuedSecurities: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _nSNetworkDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension NSNetworkQueryFilter
    on QueryBuilder<NSNetwork, NSNetwork, QFilterCondition> {
  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      currentBlockHeightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentBlockHeight',
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      currentBlockHeightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentBlockHeight',
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      currentBlockHeightEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentBlockHeight',
        value: value,
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      currentBlockHeightGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentBlockHeight',
        value: value,
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      currentBlockHeightLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentBlockHeight',
        value: value,
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      currentBlockHeightBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentBlockHeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      issuedAssetsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'issuedAssets',
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      issuedAssetsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'issuedAssets',
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition> issuedAssetsEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'issuedAssets',
        value: value,
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      issuedAssetsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'issuedAssets',
        value: value,
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      issuedAssetsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'issuedAssets',
        value: value,
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition> issuedAssetsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'issuedAssets',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      issuedSecuritiesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'issuedSecurities',
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      issuedSecuritiesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'issuedSecurities',
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      issuedSecuritiesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'issuedSecurities',
        value: value,
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      issuedSecuritiesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'issuedSecurities',
        value: value,
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      issuedSecuritiesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'issuedSecurities',
        value: value,
      ));
    });
  }

  QueryBuilder<NSNetwork, NSNetwork, QAfterFilterCondition>
      issuedSecuritiesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'issuedSecurities',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NSNetworkQueryObject
    on QueryBuilder<NSNetwork, NSNetwork, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const NSPegInSchema = Schema(
  name: r'NSPegIn',
  id: 8674473010269496717,
  properties: {
    r'pegInCount1y': PropertySchema(
      id: 0,
      name: r'pegInCount1y',
      type: IsarType.long,
    ),
    r'pegInCount24h': PropertySchema(
      id: 1,
      name: r'pegInCount24h',
      type: IsarType.long,
    ),
    r'pegInCount30d': PropertySchema(
      id: 2,
      name: r'pegInCount30d',
      type: IsarType.long,
    ),
    r'pegInVolume1y': PropertySchema(
      id: 3,
      name: r'pegInVolume1y',
      type: IsarType.long,
    ),
    r'pegInVolume24h': PropertySchema(
      id: 4,
      name: r'pegInVolume24h',
      type: IsarType.long,
    ),
    r'pegInVolume30d': PropertySchema(
      id: 5,
      name: r'pegInVolume30d',
      type: IsarType.long,
    )
  },
  estimateSize: _nSPegInEstimateSize,
  serialize: _nSPegInSerialize,
  deserialize: _nSPegInDeserialize,
  deserializeProp: _nSPegInDeserializeProp,
);

int _nSPegInEstimateSize(
  NSPegIn object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _nSPegInSerialize(
  NSPegIn object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.pegInCount1y);
  writer.writeLong(offsets[1], object.pegInCount24h);
  writer.writeLong(offsets[2], object.pegInCount30d);
  writer.writeLong(offsets[3], object.pegInVolume1y);
  writer.writeLong(offsets[4], object.pegInVolume24h);
  writer.writeLong(offsets[5], object.pegInVolume30d);
}

NSPegIn _nSPegInDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NSPegIn(
    pegInCount1y: reader.readLongOrNull(offsets[0]),
    pegInCount24h: reader.readLongOrNull(offsets[1]),
    pegInCount30d: reader.readLongOrNull(offsets[2]),
    pegInVolume1y: reader.readLongOrNull(offsets[3]),
    pegInVolume24h: reader.readLongOrNull(offsets[4]),
    pegInVolume30d: reader.readLongOrNull(offsets[5]),
  );
  return object;
}

P _nSPegInDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension NSPegInQueryFilter
    on QueryBuilder<NSPegIn, NSPegIn, QFilterCondition> {
  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInCount1yIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegInCount1y',
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition>
      pegInCount1yIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegInCount1y',
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInCount1yEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegInCount1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInCount1yGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegInCount1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInCount1yLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegInCount1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInCount1yBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegInCount1y',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInCount24hIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegInCount24h',
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition>
      pegInCount24hIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegInCount24h',
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInCount24hEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegInCount24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition>
      pegInCount24hGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegInCount24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInCount24hLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegInCount24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInCount24hBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegInCount24h',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInCount30dIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegInCount30d',
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition>
      pegInCount30dIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegInCount30d',
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInCount30dEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegInCount30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition>
      pegInCount30dGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegInCount30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInCount30dLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegInCount30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInCount30dBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegInCount30d',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInVolume1yIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegInVolume1y',
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition>
      pegInVolume1yIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegInVolume1y',
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInVolume1yEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegInVolume1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition>
      pegInVolume1yGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegInVolume1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInVolume1yLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegInVolume1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInVolume1yBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegInVolume1y',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInVolume24hIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegInVolume24h',
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition>
      pegInVolume24hIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegInVolume24h',
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInVolume24hEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegInVolume24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition>
      pegInVolume24hGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegInVolume24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInVolume24hLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegInVolume24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInVolume24hBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegInVolume24h',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInVolume30dIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegInVolume30d',
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition>
      pegInVolume30dIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegInVolume30d',
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInVolume30dEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegInVolume30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition>
      pegInVolume30dGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegInVolume30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInVolume30dLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegInVolume30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegIn, NSPegIn, QAfterFilterCondition> pegInVolume30dBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegInVolume30d',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NSPegInQueryObject
    on QueryBuilder<NSPegIn, NSPegIn, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const NSPegOutSchema = Schema(
  name: r'NSPegOut',
  id: 4900177165961359406,
  properties: {
    r'pegOutCount1y': PropertySchema(
      id: 0,
      name: r'pegOutCount1y',
      type: IsarType.long,
    ),
    r'pegOutCount24h': PropertySchema(
      id: 1,
      name: r'pegOutCount24h',
      type: IsarType.long,
    ),
    r'pegOutCount30d': PropertySchema(
      id: 2,
      name: r'pegOutCount30d',
      type: IsarType.long,
    ),
    r'pegOutVolume1y': PropertySchema(
      id: 3,
      name: r'pegOutVolume1y',
      type: IsarType.long,
    ),
    r'pegOutVolume24h': PropertySchema(
      id: 4,
      name: r'pegOutVolume24h',
      type: IsarType.long,
    ),
    r'pegOutVolume30d': PropertySchema(
      id: 5,
      name: r'pegOutVolume30d',
      type: IsarType.long,
    )
  },
  estimateSize: _nSPegOutEstimateSize,
  serialize: _nSPegOutSerialize,
  deserialize: _nSPegOutDeserialize,
  deserializeProp: _nSPegOutDeserializeProp,
);

int _nSPegOutEstimateSize(
  NSPegOut object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _nSPegOutSerialize(
  NSPegOut object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.pegOutCount1y);
  writer.writeLong(offsets[1], object.pegOutCount24h);
  writer.writeLong(offsets[2], object.pegOutCount30d);
  writer.writeLong(offsets[3], object.pegOutVolume1y);
  writer.writeLong(offsets[4], object.pegOutVolume24h);
  writer.writeLong(offsets[5], object.pegOutVolume30d);
}

NSPegOut _nSPegOutDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NSPegOut(
    pegOutCount1y: reader.readLongOrNull(offsets[0]),
    pegOutCount24h: reader.readLongOrNull(offsets[1]),
    pegOutCount30d: reader.readLongOrNull(offsets[2]),
    pegOutVolume1y: reader.readLongOrNull(offsets[3]),
    pegOutVolume24h: reader.readLongOrNull(offsets[4]),
    pegOutVolume30d: reader.readLongOrNull(offsets[5]),
  );
  return object;
}

P _nSPegOutDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension NSPegOutQueryFilter
    on QueryBuilder<NSPegOut, NSPegOut, QFilterCondition> {
  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutCount1yIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegOutCount1y',
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutCount1yIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegOutCount1y',
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition> pegOutCount1yEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegOutCount1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutCount1yGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegOutCount1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition> pegOutCount1yLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegOutCount1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition> pegOutCount1yBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegOutCount1y',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutCount24hIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegOutCount24h',
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutCount24hIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegOutCount24h',
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition> pegOutCount24hEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegOutCount24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutCount24hGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegOutCount24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutCount24hLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegOutCount24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition> pegOutCount24hBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegOutCount24h',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutCount30dIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegOutCount30d',
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutCount30dIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegOutCount30d',
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition> pegOutCount30dEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegOutCount30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutCount30dGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegOutCount30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutCount30dLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegOutCount30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition> pegOutCount30dBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegOutCount30d',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume1yIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegOutVolume1y',
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume1yIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegOutVolume1y',
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition> pegOutVolume1yEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegOutVolume1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume1yGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegOutVolume1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume1yLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegOutVolume1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition> pegOutVolume1yBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegOutVolume1y',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume24hIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegOutVolume24h',
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume24hIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegOutVolume24h',
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume24hEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegOutVolume24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume24hGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegOutVolume24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume24hLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegOutVolume24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume24hBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegOutVolume24h',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume30dIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pegOutVolume30d',
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume30dIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pegOutVolume30d',
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume30dEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pegOutVolume30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume30dGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pegOutVolume30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume30dLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pegOutVolume30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSPegOut, NSPegOut, QAfterFilterCondition>
      pegOutVolume30dBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pegOutVolume30d',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NSPegOutQueryObject
    on QueryBuilder<NSPegOut, NSPegOut, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const NSTransactionsSchema = Schema(
  name: r'NSTransactions',
  id: 3291571788390597624,
  properties: {
    r'txCount1y': PropertySchema(
      id: 0,
      name: r'txCount1y',
      type: IsarType.long,
    ),
    r'txCount24h': PropertySchema(
      id: 1,
      name: r'txCount24h',
      type: IsarType.long,
    ),
    r'txCount30d': PropertySchema(
      id: 2,
      name: r'txCount30d',
      type: IsarType.long,
    )
  },
  estimateSize: _nSTransactionsEstimateSize,
  serialize: _nSTransactionsSerialize,
  deserialize: _nSTransactionsDeserialize,
  deserializeProp: _nSTransactionsDeserializeProp,
);

int _nSTransactionsEstimateSize(
  NSTransactions object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _nSTransactionsSerialize(
  NSTransactions object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.txCount1y);
  writer.writeLong(offsets[1], object.txCount24h);
  writer.writeLong(offsets[2], object.txCount30d);
}

NSTransactions _nSTransactionsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NSTransactions(
    txCount1y: reader.readLongOrNull(offsets[0]),
    txCount24h: reader.readLongOrNull(offsets[1]),
    txCount30d: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _nSTransactionsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension NSTransactionsQueryFilter
    on QueryBuilder<NSTransactions, NSTransactions, QFilterCondition> {
  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount1yIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'txCount1y',
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount1yIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'txCount1y',
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount1yEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'txCount1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount1yGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'txCount1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount1yLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'txCount1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount1yBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'txCount1y',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount24hIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'txCount24h',
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount24hIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'txCount24h',
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount24hEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'txCount24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount24hGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'txCount24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount24hLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'txCount24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount24hBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'txCount24h',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount30dIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'txCount30d',
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount30dIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'txCount30d',
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount30dEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'txCount30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount30dGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'txCount30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount30dLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'txCount30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSTransactions, NSTransactions, QAfterFilterCondition>
      txCount30dBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'txCount30d',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NSTransactionsQueryObject
    on QueryBuilder<NSTransactions, NSTransactions, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const NSSwapsSchema = Schema(
  name: r'NSSwaps',
  id: -5534817351889029316,
  properties: {
    r'swapCount1y': PropertySchema(
      id: 0,
      name: r'swapCount1y',
      type: IsarType.long,
    ),
    r'swapCount24h': PropertySchema(
      id: 1,
      name: r'swapCount24h',
      type: IsarType.long,
    ),
    r'swapCount30d': PropertySchema(
      id: 2,
      name: r'swapCount30d',
      type: IsarType.long,
    )
  },
  estimateSize: _nSSwapsEstimateSize,
  serialize: _nSSwapsSerialize,
  deserialize: _nSSwapsDeserialize,
  deserializeProp: _nSSwapsDeserializeProp,
);

int _nSSwapsEstimateSize(
  NSSwaps object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _nSSwapsSerialize(
  NSSwaps object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.swapCount1y);
  writer.writeLong(offsets[1], object.swapCount24h);
  writer.writeLong(offsets[2], object.swapCount30d);
}

NSSwaps _nSSwapsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NSSwaps(
    swapCount1y: reader.readLongOrNull(offsets[0]),
    swapCount24h: reader.readLongOrNull(offsets[1]),
    swapCount30d: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _nSSwapsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension NSSwapsQueryFilter
    on QueryBuilder<NSSwaps, NSSwaps, QFilterCondition> {
  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount1yIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'swapCount1y',
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount1yIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'swapCount1y',
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount1yEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'swapCount1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount1yGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'swapCount1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount1yLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'swapCount1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount1yBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'swapCount1y',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount24hIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'swapCount24h',
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition>
      swapCount24hIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'swapCount24h',
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount24hEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'swapCount24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount24hGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'swapCount24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount24hLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'swapCount24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount24hBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'swapCount24h',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount30dIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'swapCount30d',
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition>
      swapCount30dIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'swapCount30d',
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount30dEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'swapCount30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount30dGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'swapCount30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount30dLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'swapCount30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapCount30dBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'swapCount30d',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NSSwapsQueryObject
    on QueryBuilder<NSSwaps, NSSwaps, QFilterCondition> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkStats _$NetworkStatsFromJson(Map json) => NetworkStats(
      id: json['id'] as int? ?? Isar.autoIncrement,
      lbtcIssuance: json['lbtcIssuance'] == null
          ? null
          : NSLBTCIssuance.fromJson(
              Map<String, dynamic>.from(json['lbtcIssuance'] as Map)),
      network: json['network'] == null
          ? null
          : NSNetwork.fromJson(
              Map<String, dynamic>.from(json['network'] as Map)),
      pegIn: json['pegIn'] == null
          ? null
          : NSPegIn.fromJson(Map<String, dynamic>.from(json['pegIn'] as Map)),
      pegOut: json['pegOut'] == null
          ? null
          : NSPegOut.fromJson(Map<String, dynamic>.from(json['pegOut'] as Map)),
      transactions: json['transactions'] == null
          ? null
          : NSTransactions.fromJson(
              Map<String, dynamic>.from(json['transactions'] as Map)),
      swaps: json['swaps'] == null
          ? null
          : NSSwaps.fromJson(Map<String, dynamic>.from(json['swaps'] as Map)),
    );

Map<String, dynamic> _$NetworkStatsToJson(NetworkStats instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lbtcIssuance', instance.lbtcIssuance?.toJson());
  writeNotNull('network', instance.network?.toJson());
  writeNotNull('pegIn', instance.pegIn?.toJson());
  writeNotNull('pegOut', instance.pegOut?.toJson());
  writeNotNull('transactions', instance.transactions?.toJson());
  writeNotNull('swaps', instance.swaps?.toJson());
  return val;
}

NSLBTCIssuance _$NSLBTCIssuanceFromJson(Map json) => NSLBTCIssuance(
      circulatingAmount: json['circulatingAmount'] as int? ?? 0,
      issuedAmount: json['issuedAmount'] as int? ?? 0,
      pegoutBurnAmount: json['pegoutBurnAmount'] as int? ?? 0,
    );

Map<String, dynamic> _$NSLBTCIssuanceToJson(NSLBTCIssuance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('circulatingAmount', instance.circulatingAmount);
  writeNotNull('issuedAmount', instance.issuedAmount);
  writeNotNull('pegoutBurnAmount', instance.pegoutBurnAmount);
  return val;
}

NSNetwork _$NSNetworkFromJson(Map json) => NSNetwork(
      currentBlockHeight: json['currentBlockHeight'] as int? ?? 0,
      issuedAssets: json['issuedAssets'] as int? ?? 0,
      issuedSecurities: json['issuedSecurities'] as int? ?? 0,
    );

Map<String, dynamic> _$NSNetworkToJson(NSNetwork instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentBlockHeight', instance.currentBlockHeight);
  writeNotNull('issuedAssets', instance.issuedAssets);
  writeNotNull('issuedSecurities', instance.issuedSecurities);
  return val;
}

NSPegIn _$NSPegInFromJson(Map json) => NSPegIn(
      pegInVolume24h: json['pegInVolume24h'] as int? ?? 0,
      pegInCount24h: json['pegInCount24h'] as int? ?? 0,
      pegInVolume30d: json['pegInVolume30d'] as int? ?? 0,
      pegInCount30d: json['pegInCount30d'] as int? ?? 0,
      pegInVolume1y: json['pegInVolume1y'] as int? ?? 0,
      pegInCount1y: json['pegInCount1y'] as int? ?? 0,
    );

Map<String, dynamic> _$NSPegInToJson(NSPegIn instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pegInVolume24h', instance.pegInVolume24h);
  writeNotNull('pegInCount24h', instance.pegInCount24h);
  writeNotNull('pegInVolume30d', instance.pegInVolume30d);
  writeNotNull('pegInCount30d', instance.pegInCount30d);
  writeNotNull('pegInVolume1y', instance.pegInVolume1y);
  writeNotNull('pegInCount1y', instance.pegInCount1y);
  return val;
}

NSPegOut _$NSPegOutFromJson(Map json) => NSPegOut(
      pegOutVolume24h: json['pegOutVolume24h'] as int? ?? 0,
      pegOutCount24h: json['pegOutCount24h'] as int? ?? 0,
      pegOutVolume30d: json['pegOutVolume30d'] as int? ?? 0,
      pegOutCount30d: json['pegOutCount30d'] as int? ?? 0,
      pegOutVolume1y: json['pegOutVolume1y'] as int? ?? 0,
      pegOutCount1y: json['pegOutCount1y'] as int? ?? 0,
    );

Map<String, dynamic> _$NSPegOutToJson(NSPegOut instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pegOutVolume24h', instance.pegOutVolume24h);
  writeNotNull('pegOutCount24h', instance.pegOutCount24h);
  writeNotNull('pegOutVolume30d', instance.pegOutVolume30d);
  writeNotNull('pegOutCount30d', instance.pegOutCount30d);
  writeNotNull('pegOutVolume1y', instance.pegOutVolume1y);
  writeNotNull('pegOutCount1y', instance.pegOutCount1y);
  return val;
}

NSTransactions _$NSTransactionsFromJson(Map json) => NSTransactions(
      txCount24h: json['txCount24h'] as int? ?? 0,
      txCount30d: json['txCount30d'] as int? ?? 0,
      txCount1y: json['txCount1y'] as int? ?? 0,
    );

Map<String, dynamic> _$NSTransactionsToJson(NSTransactions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('txCount24h', instance.txCount24h);
  writeNotNull('txCount30d', instance.txCount30d);
  writeNotNull('txCount1y', instance.txCount1y);
  return val;
}

NSSwaps _$NSSwapsFromJson(Map json) => NSSwaps(
      swapCount24h: json['swapCount24h'] as int? ?? 0,
      swapCount30d: json['swapCount30d'] as int? ?? 0,
      swapCount1y: json['swapCount1y'] as int? ?? 0,
    );

Map<String, dynamic> _$NSSwapsToJson(NSSwaps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('swapCount24h', instance.swapCount24h);
  writeNotNull('swapCount30d', instance.swapCount30d);
  writeNotNull('swapCount1y', instance.swapCount1y);
  return val;
}

NSBlock _$NSBlockFromJson(Map json) => NSBlock(
      id: json['id'] as int? ?? Isar.autoIncrement,
      blockHash: json['blockHash'] as String?,
      blockHeight: json['blockHeight'] as int?,
      txCount: json['txCount'] as int?,
      pegInCount: json['pegInCount'] as int?,
      pegInVolume: json['pegInVolume'] as int?,
      pegOutCount: json['pegOutCount'] as int?,
      pegOutVolume: json['pegOutVolume'] as int?,
      burnCount: json['burnCount'] as int?,
      burnVolume: json['burnVolume'] as int?,
      swapCount: json['swapCount'] as int?,
    );

Map<String, dynamic> _$NSBlockToJson(NSBlock instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blockHeight', instance.blockHeight);
  writeNotNull('blockHash', instance.blockHash);
  writeNotNull('txCount', instance.txCount);
  writeNotNull('pegInCount', instance.pegInCount);
  writeNotNull('pegInVolume', instance.pegInVolume);
  writeNotNull('pegOutCount', instance.pegOutCount);
  writeNotNull('pegOutVolume', instance.pegOutVolume);
  writeNotNull('burnCount', instance.burnCount);
  writeNotNull('burnVolume', instance.burnVolume);
  writeNotNull('swapCount', instance.swapCount);
  return val;
}
