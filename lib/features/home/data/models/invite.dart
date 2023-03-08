import 'package:Swipe/features/home/data/models/firebase_data.dart';

class Invite implements IFirebaseData {
  String description;
  String sender;
  String receiver;

  Invite(this.description, this.sender, this.receiver);

  Invite.fromJson(Map<String, dynamic> json)
      : description = json['description'],
        sender = json['sender'],
        receiver = json['receiver'];

  @override
  Map<String, Object?> toJson() =>
      {'description': description, 'sender': sender, 'receiver': receiver};
}
