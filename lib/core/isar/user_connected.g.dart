// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_connected.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserConnectedCollection on Isar {
  IsarCollection<UserConnected> get userConnecteds => this.collection();
}

const UserConnectedSchema = CollectionSchema(
  name: r'UserConnected',
  id: 6403404924369703250,
  properties: {
    r'email': PropertySchema(
      id: 0,
      name: r'email',
      type: IsarType.string,
    ),
    r'fullName': PropertySchema(
      id: 1,
      name: r'fullName',
      type: IsarType.string,
    ),
    r'groups': PropertySchema(
      id: 2,
      name: r'groups',
      type: IsarType.stringList,
    ),
    r'profilePic': PropertySchema(
      id: 3,
      name: r'profilePic',
      type: IsarType.string,
    ),
    r'uid': PropertySchema(
      id: 4,
      name: r'uid',
      type: IsarType.string,
    )
  },
  estimateSize: _userConnectedEstimateSize,
  serialize: _userConnectedSerialize,
  deserialize: _userConnectedDeserialize,
  deserializeProp: _userConnectedDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _userConnectedGetId,
  getLinks: _userConnectedGetLinks,
  attach: _userConnectedAttach,
  version: '3.1.0+1',
);

int _userConnectedEstimateSize(
  UserConnected object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.fullName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.groups;
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
  {
    final value = object.profilePic;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.uid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _userConnectedSerialize(
  UserConnected object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.email);
  writer.writeString(offsets[1], object.fullName);
  writer.writeStringList(offsets[2], object.groups);
  writer.writeString(offsets[3], object.profilePic);
  writer.writeString(offsets[4], object.uid);
}

UserConnected _userConnectedDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserConnected();
  object.email = reader.readStringOrNull(offsets[0]);
  object.fullName = reader.readStringOrNull(offsets[1]);
  object.groups = reader.readStringList(offsets[2]);
  object.id = id;
  object.profilePic = reader.readStringOrNull(offsets[3]);
  object.uid = reader.readStringOrNull(offsets[4]);
  return object;
}

P _userConnectedDeserializeProp<P>(
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
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userConnectedGetId(UserConnected object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userConnectedGetLinks(UserConnected object) {
  return [];
}

void _userConnectedAttach(
    IsarCollection<dynamic> col, Id id, UserConnected object) {
  object.id = id;
}

extension UserConnectedQueryWhereSort
    on QueryBuilder<UserConnected, UserConnected, QWhere> {
  QueryBuilder<UserConnected, UserConnected, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserConnectedQueryWhere
    on QueryBuilder<UserConnected, UserConnected, QWhereClause> {
  QueryBuilder<UserConnected, UserConnected, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<UserConnected, UserConnected, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterWhereClause> idBetween(
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

extension UserConnectedQueryFilter
    on QueryBuilder<UserConnected, UserConnected, QFilterCondition> {
  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      emailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      emailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      fullNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fullName',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      fullNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fullName',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      fullNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      fullNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      fullNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      fullNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fullName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      fullNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      fullNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      fullNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      fullNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fullName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      fullNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      fullNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fullName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groups',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groups',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groups',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groups',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groups',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groups',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'groups',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'groups',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'groups',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'groups',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groups',
        value: '',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groups',
        value: '',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      groupsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      profilePicIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'profilePic',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      profilePicIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'profilePic',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      profilePicEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profilePic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      profilePicGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'profilePic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      profilePicLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'profilePic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      profilePicBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'profilePic',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      profilePicStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'profilePic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      profilePicEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'profilePic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      profilePicContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'profilePic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      profilePicMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'profilePic',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      profilePicIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profilePic',
        value: '',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      profilePicIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'profilePic',
        value: '',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      uidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uid',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      uidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uid',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition> uidEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      uidGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition> uidLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition> uidBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      uidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition> uidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition> uidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition> uidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      uidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uid',
        value: '',
      ));
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterFilterCondition>
      uidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uid',
        value: '',
      ));
    });
  }
}

extension UserConnectedQueryObject
    on QueryBuilder<UserConnected, UserConnected, QFilterCondition> {}

extension UserConnectedQueryLinks
    on QueryBuilder<UserConnected, UserConnected, QFilterCondition> {}

extension UserConnectedQuerySortBy
    on QueryBuilder<UserConnected, UserConnected, QSortBy> {
  QueryBuilder<UserConnected, UserConnected, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy> sortByFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.asc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy>
      sortByFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.desc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy> sortByProfilePic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profilePic', Sort.asc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy>
      sortByProfilePicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profilePic', Sort.desc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy> sortByUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.asc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy> sortByUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.desc);
    });
  }
}

extension UserConnectedQuerySortThenBy
    on QueryBuilder<UserConnected, UserConnected, QSortThenBy> {
  QueryBuilder<UserConnected, UserConnected, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy> thenByFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.asc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy>
      thenByFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.desc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy> thenByProfilePic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profilePic', Sort.asc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy>
      thenByProfilePicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profilePic', Sort.desc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy> thenByUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.asc);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QAfterSortBy> thenByUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.desc);
    });
  }
}

extension UserConnectedQueryWhereDistinct
    on QueryBuilder<UserConnected, UserConnected, QDistinct> {
  QueryBuilder<UserConnected, UserConnected, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QDistinct> distinctByFullName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QDistinct> distinctByGroups() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groups');
    });
  }

  QueryBuilder<UserConnected, UserConnected, QDistinct> distinctByProfilePic(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'profilePic', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserConnected, UserConnected, QDistinct> distinctByUid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uid', caseSensitive: caseSensitive);
    });
  }
}

extension UserConnectedQueryProperty
    on QueryBuilder<UserConnected, UserConnected, QQueryProperty> {
  QueryBuilder<UserConnected, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserConnected, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<UserConnected, String?, QQueryOperations> fullNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullName');
    });
  }

  QueryBuilder<UserConnected, List<String>?, QQueryOperations>
      groupsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groups');
    });
  }

  QueryBuilder<UserConnected, String?, QQueryOperations> profilePicProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'profilePic');
    });
  }

  QueryBuilder<UserConnected, String?, QQueryOperations> uidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uid');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserConnected _$UserConnectedFromJson(Map<String, dynamic> json) =>
    UserConnected()
      ..email = json['email'] as String?
      ..fullName = json['fullName'] as String?
      ..groups =
          (json['groups'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..profilePic = json['profilePic'] as String?
      ..uid = json['uid'] as String?;

Map<String, dynamic> _$UserConnectedToJson(UserConnected instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fullName': instance.fullName,
      'groups': instance.groups,
      'profilePic': instance.profilePic,
      'uid': instance.uid,
    };
