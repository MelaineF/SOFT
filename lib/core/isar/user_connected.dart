import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_connected.g.dart';

@JsonSerializable()
@collection
class UserConnected {
  UserConnected();

  factory UserConnected.fromJson(Map<String, dynamic> json) =>
      _$UserConnectedFromJson(json);

  @JsonKey(ignore: true)
  Id id = Isar.autoIncrement;

  String? email;

  String? fullName;

  List<String>? groups;

  String? profilePic;

  String? uid;

  Map<String, dynamic> toJson() => _$UserConnectedToJson(this);
}
