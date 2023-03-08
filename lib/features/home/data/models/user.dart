import 'package:Swipe/features/home/data/models/firebase_data.dart';

class User implements IFirebaseData {
  String firstName;
  String lastName;

  User(this.firstName, this.lastName);

  User.fromJson(Map<String, dynamic> json)
      : firstName = json['first_name'],
        lastName = json['last_name'];

  @override
  Map<String, Object?> toJson() =>
      {'first_name': firstName, 'last_name': lastName};
}
