import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';

abstract class FirebaseRepository<T> {
  FirebaseDatabase database = FirebaseDatabase.instance;

  String create(T obj);

  bool update(String url, T obj) {
    database.ref().child(url).update(jsonEncode(obj) as Map<String, Object?>);
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