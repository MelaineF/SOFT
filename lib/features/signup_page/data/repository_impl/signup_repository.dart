import 'package:Swipe/core/firebase/firebase_repository.dart';
import 'package:Swipe/features/root/data/models/user.dart';
import 'package:argon2/argon2.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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
    if (!isLoggedIn()) return '';

    String id = currentUser?.uid ?? 'nop';
    database.ref('$baseUrl$id').set(obj.toJson());
    return id;
  }
}