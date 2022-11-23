import 'dart:typed_data';
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

  bool addUser(String first, String last, String email, String pwd) {
    try {
      var block = Uint8List(32);
      _argon2.generateBytes(_params.converter.convert(pwd), block, 0, block.length);

       var id = nanoid();
      _database.ref('/users/$id').set({
        "first_name": first,
        "last_name": last,
        "email": email,
        "password": block.toHexString()
      });
      return true;
    } catch(e) {
      return false;
    }
  }

  String addAnonUser() {
    try {
      var block = Uint8List(32);
      _argon2.generateBytes(_params.converter.convert("7aVixzAiHZ!dCZ4sGCkPr72yBiumo*RQVs"), block, 0, block.length);

      var id = nanoid();
      _database.ref('/users/$id').set({
        "last_name": "world",
        "first_name": "hello",
        "email": "helloworld@gmail.com",
        "password": block.toHexString()
      });
      return id;
    } catch (e) {
      return '';
    }
  }
}