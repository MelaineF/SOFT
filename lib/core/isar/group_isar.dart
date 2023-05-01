import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'group_isar.g.dart';

@JsonSerializable()
@collection
class GroupIsar {
  GroupIsar();

  factory GroupIsar.fromJson(Map<String, dynamic> json) =>
      _$GroupIsarFromJson(json);

  @JsonKey(ignore: true)
  Id id = Isar.autoIncrement;

  String? admin;

  String? groupIcon;

  String? groupId;

  String? groupName;

  List<String>? users;

  String? recentMessage;

  String? recentMessageSender;

  Map<String, dynamic> toJson() => _$GroupIsarToJson(this);
}
