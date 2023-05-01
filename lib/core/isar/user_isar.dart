import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_isar.g.dart';

@JsonSerializable()
@collection
class UserIsar {
  UserIsar();

  factory UserIsar.fromJson(Map<String, dynamic> json) =>
      _$UserIsarFromJson(json);

  @JsonKey(ignore: true)
  Id id = Isar.autoIncrement;

  String? email;

  String? fullName;

  List<String>? groups;

  String? profilePic;

  String? uid;

  Map<String, dynamic> toJson() => _$UserIsarToJson(this);
}
