import 'dart:typed_data';
import 'package:firebase_database/firebase_database.dart';
import 'package:nanoid/nanoid.dart';
import 'package:argon2/argon2.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DatabaseService {
  final FirebaseDatabase _database = FirebaseDatabase.instance;
  final _params = Argon2Parameters(
    Argon2Parameters.ARGON2_i,
    dotenv.get('ARGON2_SALT').toBytesLatin1(),
    version: Argon2Parameters.ARGON2_VERSION_10,
    iterations: 2,
    memoryPowerOf2: 16,
  );

  Future<String> addAnonUser() async {
    try {
      var argon2 = Argon2BytesGenerator();
      argon2.init(_params);
      var pwdbytes = _params.converter.convert("7aVixzAiHZ!dCZ4sGCkPr72yBiumo*RQVs");
      var result = Uint8List(32);
      argon2.generateBytes(pwdbytes, result, 0, result.length);

      var id = nanoid();
      _database.ref('/users/$id').set({
        "last_name": "world",
        "first_name": "hello",
        "email": "helloworld@gmail.com",
        "password": result.toHexString()
      });
      return id;
    } catch (e) {
      return '';
    }
  }
}