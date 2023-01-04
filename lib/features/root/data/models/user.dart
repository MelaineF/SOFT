import 'package:Swipe/features/root/data/models/firebase_data.dart';

class User implements IFirebaseData {
  String email;
  String firstName;
  String lastName;
  String password;

  User(this.email, this.firstName, this.lastName, this.password);

  User.fromJson(Map<String, dynamic> json) :
        email = json['email'],
        firstName = json['first_name'],
        lastName = json['last_name'],
        password = json['password'];

  @override
  Map<String, Object?> toJson() => {
    'email': email,
    'first_name': firstName,
    'last_name': lastName,
    'password': password
  };
}