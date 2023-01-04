import 'package:Swipe/features/root/data/models/firebase_data.dart';

class Message implements IFirebaseData {
  String content;
  DateTime timestamp;
  String sender;
  String receiver;

  Message(this.content, this.sender, this.receiver) : timestamp = DateTime.now();

  Message.fromJson(Map<String, dynamic> json) :
        content = json['content'],
        timestamp = json['timestamp'],
        sender = json['sender'],
        receiver = json['receiver'];

  @override
  Map<String, Object?> toJson() => {
    'content': content,
    'timestamp': timestamp,
    'sender': sender,
    'receiver': receiver
  };
}