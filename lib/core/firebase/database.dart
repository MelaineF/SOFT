import 'dart:convert';
import 'dart:typed_data';
import 'package:Swipe/core/firebase/classes/message.dart';
import 'package:Swipe/core/firebase/classes/user.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:nanoid/nanoid.dart';
import 'package:argon2/argon2.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class RealtimeDb {

  final FirebaseDatabase _database = FirebaseDatabase.instance;

  final Argon2BytesGenerator _argon2 = Argon2BytesGenerator();
  final Argon2Parameters _params = Argon2Parameters(
    Argon2Parameters.ARGON2_i,
    dotenv.get('ARGON2_SALT').toBytesLatin1(),
    version: Argon2Parameters.ARGON2_VERSION_10,
    iterations: 2,
    memoryPowerOf2: 16,
  );

  RealtimeDb() {
    _argon2.init(_params);
  }

  String addUser(User user) {
    try {
      var block = Uint8List(32);
      _argon2.generateBytes(_params.converter.convert(user.password), block, 0, block.length);
      user.password = block.toHexString();

      var id = nanoid();
      _database.ref('/users/$id').set(jsonEncode(user));
      return id;
    } catch(e) {
      return '';
    }
  }

  Future<User> getUser(String id) async {
    var json = await _database.ref().child('/users/$id').get();
    return User.fromJson(json.value as Map<String, dynamic>);
  }

  String sendMessage(Message message) {
    try {
      var id = nanoid();
      _database.ref('/messages/$id').set(jsonEncode(message));
      return id;
    } catch(e) {
      return '';
    }
  }

  Future<Message> getMessage(String id) async {
    var json = await _database.ref().child('/messages/$id').get();
    return Message.fromJson(json.value as Map<String, dynamic>);
  }
}