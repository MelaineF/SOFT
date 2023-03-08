import 'package:Swipe/core/firebase/firebase_repository.dart';
import 'package:Swipe/features/home/data/models/user.dart';
import 'package:argon2/argon2.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:nanoid/nanoid.dart';

class SignupRepository extends FirebaseRepository<User> {
  SignupRepository() {
    _argon2.init(_params);
  }

  static const String baseUrl = '/users/';

  final Argon2BytesGenerator _argon2 = Argon2BytesGenerator();
  final Argon2Parameters _params = Argon2Parameters(
    Argon2Parameters.ARGON2_i,
    dotenv.get('ARGON2_SALT').toBytesLatin1(),
    version: Argon2Parameters.ARGON2_VERSION_10,
    iterations: 2,
    memoryPowerOf2: 16,
  );

  @override
  String create(User obj) {
    //Uint8List block = Uint8List(32);
    //_argon2.generateBytes(_params.converter.convert(obj.password), block, 0, block.length);
    //obj.password = block.toHexString();

    String id = nanoid();
    database.ref('$baseUrl$id').set(obj.toJson());
    return id;
  }
}
