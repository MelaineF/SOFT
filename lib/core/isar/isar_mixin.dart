import 'dart:io';

import 'package:Swipe/core/isar/group_isar.dart';
import 'package:Swipe/core/isar/user_connected.dart';
import 'package:Swipe/core/isar/user_isar.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

mixin IsarMixin {
  late Isar _isar;

  Future<void> openIsar() async {
    final Directory dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [UserIsarSchema, GroupIsarSchema, UserConnectedSchema],
      directory: dir.path,
    );
  }

  void closeIsar() {
    if (_isar.isOpen) {
      _isar.close();
    }
  }

  Isar get isarLocalDB => _isar;

  IsarCollection<UserConnected> get user => _isar.userConnecteds;

  IsarCollection<UserIsar> get users => _isar.userIsars;

  IsarCollection<GroupIsar> get groups => _isar.groupIsars;
}
