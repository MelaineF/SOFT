import 'package:Swipe/features/root/data/models/firebase_data.dart';

class Favorite implements IFirebaseData {
  String collab;
  String user;
  DateTime timestamp;

  Favorite(this.collab, this.user) : timestamp = DateTime.now();

  Favorite.fromJson(Map<String, dynamic> json) :
        collab = json['collaboration'],
        user = json['user'],
        timestamp = json['timestamp'];

  @override
  Map<String, Object?> toJson() => {
    'collaboration': collab,
    'user': user,
    'timestamp': timestamp
  };
}