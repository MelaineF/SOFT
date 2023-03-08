import 'package:Swipe/core/firebase/firebase_repository.dart';
import 'package:Swipe/features/home/data/models/user.dart';

class SigninRepository extends FirebaseRepository<User> {
  static const String baseUrl = '/users/';

  @override
  String create(User obj) {
    throw UnsupportedError(
        'creating a user is not supported from the sign in repository');
  }

  @override
  Future<User> read(String url) => super.read('$baseUrl$url');
}
