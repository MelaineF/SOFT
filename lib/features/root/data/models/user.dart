import 'package:Swipe/features/root/data/models/firebase_data.dart';

class User implements IFirebaseData {
  String firstName;
  String lastName;
  String? avatarUrl;

  User(this.firstName, this.lastName, this.avatarUrl);

  User.fromJson(Map<String, dynamic> json) :
        firstName = json['first_name'],
        lastName = json['last_name'],
        avatarUrl = json['avatar_url'];

  @override
  Map<String, Object?> toJson() => {
    'first_name': firstName,
    'last_name': lastName,
    'avatar_url': avatarUrl
  };
}