// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGroupIsarCollection on Isar {
  IsarCollection<GroupIsar> get groupIsars => this.collection();
}

const GroupIsarSchema = CollectionSchema(
  name: r'GroupIsar',
  id: -3445220930281838384,
  properties: {
    r'admin': PropertySchema(
      id: 0,
      name: r'admin',
      type: IsarType.string,
    ),
    r'groupIcon': PropertySchema(
      id: 1,
      name: r'groupIcon',
      type: IsarType.string,
    ),
    r'groupId': PropertySchema(
      id: 2,
      name: r'groupId',
      type: IsarType.string,
    ),
    r'groupName': PropertySchema(
      id: 3,
      name: r'groupName',
      type: IsarType.string,
    ),
    r'recentMessage': PropertySchema(
      id: 4,
      name: r'recentMessage',
      type: IsarType.string,
    ),
    r'recentMessageSender': PropertySchema(
      id: 5,
      name: r'recentMessageSender',
      type: IsarType.string,
    ),
    r'users': PropertySchema(
      id: 6,
      name: r'users',
      type: IsarType.stringList,
    )
  },
  estimateSize: _groupIsarEstimateSize,
  serialize: _groupIsarSerialize,
  deserialize: _groupIsarDeserialize,
  deserializeProp: _groupIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _groupIsarGetId,
  getLinks: _groupIsarGetLinks,
  attach: _groupIsarAttach,
  version: '3.1.0+1',
);

int _groupIsarEstimateSize(
  GroupIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.admin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.groupIcon;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.groupId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.groupName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.recentMessage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.recentMessageSender;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.users;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  return bytesCount;
}

void _groupIsarSerialize(
  GroupIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.admin);
  writer.writeString(offsets[1], object.groupIcon);
  writer.writeString(offsets[2], object.groupId);
  writer.writeString(offsets[3], object.groupName);
  writer.writeString(offsets[4], object.recentMessage);
  writer.writeString(offsets[5], object.recentMessageSender);
  writer.writeStringList(offsets[6], object.users);
}

GroupIsar _groupIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GroupIsar();
  object.admin = reader.readStringOrNull(offsets[0]);
  object.groupIcon = reader.readStringOrNull(offsets[1]);
  object.groupId = reader.readStringOrNull(offsets[2]);
  object.groupName = reader.readStringOrNull(offsets[3]);
  object.id = id;
  object.recentMessage = reader.readStringOrNull(offsets[4]);
  object.recentMessageSender = reader.readStringOrNull(offsets[5]);
  object.users = reader.readStringList(offsets[6]);
  return object;
}

P _groupIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _groupIsarGetId(GroupIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _groupIsarGetLinks(GroupIsar object) {
  return [];
}

void _groupIsarAttach(IsarCollection<dynamic> col, Id id, GroupIsar object) {
  object.id = id;
}

extension GroupIsarQueryWhereSort
    on QueryBuilder<GroupIsar, GroupIsar, QWhere> {
  QueryBuilder<GroupIsar, GroupIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GroupIsarQueryWhere
    on QueryBuilder<GroupIsar, GroupIsar, QWhereClause> {
  QueryBuilder<GroupIsar, GroupIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<GroupIsar, GroupIsar, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterWhereClause> idBetween(
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

extension GroupIsarQueryFilter
    on QueryBuilder<GroupIsar, GroupIsar, QFilterCondition> {
  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> adminIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'admin',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> adminIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'admin',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> adminEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> adminGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'admin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> adminLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'admin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> adminBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'admin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> adminStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'admin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> adminEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'admin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> adminContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'admin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> adminMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'admin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> adminIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admin',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> adminIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'admin',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIconIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groupIcon',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      groupIconIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groupIcon',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIconEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      groupIconGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groupIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIconLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groupIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIconBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groupIcon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIconStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'groupIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIconEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'groupIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIconContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'groupIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIconMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'groupIcon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      groupIconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groupIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groupId',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groupId',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'groupId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupId',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      groupIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groupId',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groupName',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      groupNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groupName',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      groupNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groupName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'groupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'groupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'groupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'groupName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> groupNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupName',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      groupNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groupName',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'recentMessage',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'recentMessage',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recentMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recentMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recentMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recentMessage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'recentMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'recentMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'recentMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'recentMessage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recentMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'recentMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageSenderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'recentMessageSender',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageSenderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'recentMessageSender',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageSenderEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recentMessageSender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageSenderGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recentMessageSender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageSenderLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recentMessageSender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageSenderBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recentMessageSender',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageSenderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'recentMessageSender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageSenderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'recentMessageSender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageSenderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'recentMessageSender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageSenderMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'recentMessageSender',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageSenderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recentMessageSender',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      recentMessageSenderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'recentMessageSender',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> usersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'users',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> usersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'users',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> usersElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'users',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      usersElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'users',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      usersElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'users',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> usersElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'users',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      usersElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'users',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      usersElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'users',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      usersElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'users',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> usersElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'users',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      usersElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'users',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      usersElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'users',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> usersLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'users',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> usersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'users',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> usersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'users',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> usersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'users',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition>
      usersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'users',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterFilterCondition> usersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'users',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension GroupIsarQueryObject
    on QueryBuilder<GroupIsar, GroupIsar, QFilterCondition> {}

extension GroupIsarQueryLinks
    on QueryBuilder<GroupIsar, GroupIsar, QFilterCondition> {}

extension GroupIsarQuerySortBy on QueryBuilder<GroupIsar, GroupIsar, QSortBy> {
  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> sortByAdmin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin', Sort.asc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> sortByAdminDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin', Sort.desc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> sortByGroupIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupIcon', Sort.asc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> sortByGroupIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupIcon', Sort.desc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> sortByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.asc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> sortByGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.desc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> sortByGroupName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupName', Sort.asc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> sortByGroupNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupName', Sort.desc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> sortByRecentMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recentMessage', Sort.asc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> sortByRecentMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recentMessage', Sort.desc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> sortByRecentMessageSender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recentMessageSender', Sort.asc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy>
      sortByRecentMessageSenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recentMessageSender', Sort.desc);
    });
  }
}

extension GroupIsarQuerySortThenBy
    on QueryBuilder<GroupIsar, GroupIsar, QSortThenBy> {
  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> thenByAdmin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin', Sort.asc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> thenByAdminDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin', Sort.desc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> thenByGroupIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupIcon', Sort.asc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> thenByGroupIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupIcon', Sort.desc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> thenByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.asc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> thenByGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.desc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> thenByGroupName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupName', Sort.asc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> thenByGroupNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupName', Sort.desc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> thenByRecentMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recentMessage', Sort.asc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> thenByRecentMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recentMessage', Sort.desc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy> thenByRecentMessageSender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recentMessageSender', Sort.asc);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QAfterSortBy>
      thenByRecentMessageSenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recentMessageSender', Sort.desc);
    });
  }
}

extension GroupIsarQueryWhereDistinct
    on QueryBuilder<GroupIsar, GroupIsar, QDistinct> {
  QueryBuilder<GroupIsar, GroupIsar, QDistinct> distinctByAdmin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'admin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QDistinct> distinctByGroupIcon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groupIcon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QDistinct> distinctByGroupId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groupId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QDistinct> distinctByGroupName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groupName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QDistinct> distinctByRecentMessage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recentMessage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QDistinct> distinctByRecentMessageSender(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recentMessageSender',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GroupIsar, GroupIsar, QDistinct> distinctByUsers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'users');
    });
  }
}

extension GroupIsarQueryProperty
    on QueryBuilder<GroupIsar, GroupIsar, QQueryProperty> {
  QueryBuilder<GroupIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GroupIsar, String?, QQueryOperations> adminProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'admin');
    });
  }

  QueryBuilder<GroupIsar, String?, QQueryOperations> groupIconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groupIcon');
    });
  }

  QueryBuilder<GroupIsar, String?, QQueryOperations> groupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groupId');
    });
  }

  QueryBuilder<GroupIsar, String?, QQueryOperations> groupNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groupName');
    });
  }

  QueryBuilder<GroupIsar, String?, QQueryOperations> recentMessageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recentMessage');
    });
  }

  QueryBuilder<GroupIsar, String?, QQueryOperations>
      recentMessageSenderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recentMessageSender');
    });
  }

  QueryBuilder<GroupIsar, List<String>?, QQueryOperations> usersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'users');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupIsar _$GroupIsarFromJson(Map<String, dynamic> json) => GroupIsar()
  ..admin = json['admin'] as String?
  ..groupIcon = json['groupIcon'] as String?
  ..groupId = json['groupId'] as String?
  ..groupName = json['groupName'] as String?
  ..users = (json['users'] as List<dynamic>?)?.map((e) => e as String).toList()
  ..recentMessage = json['recentMessage'] as String?
  ..recentMessageSender = json['recentMessageSender'] as String?;

Map<String, dynamic> _$GroupIsarToJson(GroupIsar instance) => <String, dynamic>{
      'admin': instance.admin,
      'groupIcon': instance.groupIcon,
      'groupId': instance.groupId,
      'groupName': instance.groupName,
      'users': instance.users,
      'recentMessage': instance.recentMessage,
      'recentMessageSender': instance.recentMessageSender,
    };
