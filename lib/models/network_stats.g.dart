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

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const NSLBTCIssuanceSchema = Schema(
  name: r'NSLBTCIssuance',
  id: 3937575867217319580,
  properties: {
    r'burnedAmount': PropertySchema(
      id: 0,
      name: r'burnedAmount',
      type: IsarType.long,
    ),
    r'circulatingAmount': PropertySchema(
      id: 1,
      name: r'circulatingAmount',
      type: IsarType.long,
    ),
    r'issuedAmount': PropertySchema(
      id: 2,
      name: r'issuedAmount',
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
  writer.writeLong(offsets[0], object.burnedAmount);
  writer.writeLong(offsets[1], object.circulatingAmount);
  writer.writeLong(offsets[2], object.issuedAmount);
}

NSLBTCIssuance _nSLBTCIssuanceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NSLBTCIssuance(
    burnedAmount: reader.readLongOrNull(offsets[0]),
    circulatingAmount: reader.readLongOrNull(offsets[1]),
    issuedAmount: reader.readLongOrNull(offsets[2]),
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
      burnedAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'burnedAmount',
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      burnedAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'burnedAmount',
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      burnedAmountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'burnedAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      burnedAmountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'burnedAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      burnedAmountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'burnedAmount',
        value: value,
      ));
    });
  }

  QueryBuilder<NSLBTCIssuance, NSLBTCIssuance, QAfterFilterCondition>
      burnedAmountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'burnedAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

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
    r'pegInVolume1y': PropertySchema(
      id: 0,
      name: r'pegInVolume1y',
      type: IsarType.long,
    ),
    r'pegInVolume24h': PropertySchema(
      id: 1,
      name: r'pegInVolume24h',
      type: IsarType.long,
    ),
    r'pegInVolume30d': PropertySchema(
      id: 2,
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
  writer.writeLong(offsets[0], object.pegInVolume1y);
  writer.writeLong(offsets[1], object.pegInVolume24h);
  writer.writeLong(offsets[2], object.pegInVolume30d);
}

NSPegIn _nSPegInDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NSPegIn(
    pegInVolume1y: reader.readLongOrNull(offsets[0]),
    pegInVolume24h: reader.readLongOrNull(offsets[1]),
    pegInVolume30d: reader.readLongOrNull(offsets[2]),
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension NSPegInQueryFilter
    on QueryBuilder<NSPegIn, NSPegIn, QFilterCondition> {
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
    r'pegOutVolume1y': PropertySchema(
      id: 0,
      name: r'pegOutVolume1y',
      type: IsarType.long,
    ),
    r'pegOutVolume24h': PropertySchema(
      id: 1,
      name: r'pegOutVolume24h',
      type: IsarType.long,
    ),
    r'pegOutVolume30d': PropertySchema(
      id: 2,
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
  writer.writeLong(offsets[0], object.pegOutVolume1y);
  writer.writeLong(offsets[1], object.pegOutVolume24h);
  writer.writeLong(offsets[2], object.pegOutVolume30d);
}

NSPegOut _nSPegOutDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NSPegOut(
    pegOutVolume1y: reader.readLongOrNull(offsets[0]),
    pegOutVolume24h: reader.readLongOrNull(offsets[1]),
    pegOutVolume30d: reader.readLongOrNull(offsets[2]),
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension NSPegOutQueryFilter
    on QueryBuilder<NSPegOut, NSPegOut, QFilterCondition> {
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
    r'swapVolume1y': PropertySchema(
      id: 0,
      name: r'swapVolume1y',
      type: IsarType.long,
    ),
    r'swapVolume24h': PropertySchema(
      id: 1,
      name: r'swapVolume24h',
      type: IsarType.long,
    ),
    r'swapVolume30d': PropertySchema(
      id: 2,
      name: r'swapVolume30d',
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
  writer.writeLong(offsets[0], object.swapVolume1y);
  writer.writeLong(offsets[1], object.swapVolume24h);
  writer.writeLong(offsets[2], object.swapVolume30d);
}

NSSwaps _nSSwapsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NSSwaps(
    swapVolume1y: reader.readLongOrNull(offsets[0]),
    swapVolume24h: reader.readLongOrNull(offsets[1]),
    swapVolume30d: reader.readLongOrNull(offsets[2]),
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
  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapVolume1yIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'swapVolume1y',
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition>
      swapVolume1yIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'swapVolume1y',
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapVolume1yEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'swapVolume1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapVolume1yGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'swapVolume1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapVolume1yLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'swapVolume1y',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapVolume1yBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'swapVolume1y',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapVolume24hIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'swapVolume24h',
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition>
      swapVolume24hIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'swapVolume24h',
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapVolume24hEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'swapVolume24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition>
      swapVolume24hGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'swapVolume24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapVolume24hLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'swapVolume24h',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapVolume24hBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'swapVolume24h',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapVolume30dIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'swapVolume30d',
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition>
      swapVolume30dIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'swapVolume30d',
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapVolume30dEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'swapVolume30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition>
      swapVolume30dGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'swapVolume30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapVolume30dLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'swapVolume30d',
        value: value,
      ));
    });
  }

  QueryBuilder<NSSwaps, NSSwaps, QAfterFilterCondition> swapVolume30dBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'swapVolume30d',
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
      circulatingAmount: json['circulatingAmount'] as int?,
      issuedAmount: json['issuedAmount'] as int?,
      burnedAmount: json['burnedAmount'] as int?,
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
  writeNotNull('burnedAmount', instance.burnedAmount);
  return val;
}

NSNetwork _$NSNetworkFromJson(Map json) => NSNetwork(
      currentBlockHeight: json['currentBlockHeight'] as int?,
      issuedAssets: json['issuedAssets'] as int?,
      issuedSecurities: json['issuedSecurities'] as int?,
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
      pegInVolume24h: json['pegInVolume24h'] as int?,
      pegInVolume30d: json['pegInVolume30d'] as int?,
      pegInVolume1y: json['pegInVolume1y'] as int?,
    );

Map<String, dynamic> _$NSPegInToJson(NSPegIn instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pegInVolume24h', instance.pegInVolume24h);
  writeNotNull('pegInVolume30d', instance.pegInVolume30d);
  writeNotNull('pegInVolume1y', instance.pegInVolume1y);
  return val;
}

NSPegOut _$NSPegOutFromJson(Map json) => NSPegOut(
      pegOutVolume24h: json['pegOutVolume24h'] as int?,
      pegOutVolume30d: json['pegOutVolume30d'] as int?,
      pegOutVolume1y: json['pegOutVolume1y'] as int?,
    );

Map<String, dynamic> _$NSPegOutToJson(NSPegOut instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pegOutVolume24h', instance.pegOutVolume24h);
  writeNotNull('pegOutVolume30d', instance.pegOutVolume30d);
  writeNotNull('pegOutVolume1y', instance.pegOutVolume1y);
  return val;
}

NSTransactions _$NSTransactionsFromJson(Map json) => NSTransactions(
      txCount24h: json['txCount24h'] as int?,
      txCount30d: json['txCount30d'] as int?,
      txCount1y: json['txCount1y'] as int?,
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
      swapVolume24h: json['swapVolume24h'] as int?,
      swapVolume30d: json['swapVolume30d'] as int?,
      swapVolume1y: json['swapVolume1y'] as int?,
    );

Map<String, dynamic> _$NSSwapsToJson(NSSwaps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('swapVolume24h', instance.swapVolume24h);
  writeNotNull('swapVolume30d', instance.swapVolume30d);
  writeNotNull('swapVolume1y', instance.swapVolume1y);
  return val;
}
