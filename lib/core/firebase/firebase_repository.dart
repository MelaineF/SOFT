import 'dart:convert';
import 'package:Swipe/features/home/data/models/firebase_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class FirebaseRepository<T extends IFirebaseData> {
  FirebaseDatabase database = FirebaseDatabase.instance;
  User? currentUser;
  String? fcmToken;

  bool isLoggedIn() => currentUser != null;

  String create(T obj);

  bool update(String url, T obj) {
    database.ref().child(url).update(obj.toJson());
    return true;
  }

  Future<T> read(String url) async {
    var json = await database.ref().child(url).get();
    return jsonDecode(json.toString()) as T;
  }

  bool delete(String url) {
    database.ref().child(url).remove();
    return true;
  }
}
