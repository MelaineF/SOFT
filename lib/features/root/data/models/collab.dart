import 'dart:convert';
import 'package:Swipe/features/root/data/models/firebase_data.dart';
import 'package:Swipe/features/root/data/models/image.dart';

class Collab implements IFirebaseData {
  String title;
  String description;
  List<Image> images;
  double price;
  String sender;
  String receiver;
  bool isFinished;

  Collab(this.title, this.description, this.images, this.price, this.sender, this.receiver) : isFinished = false;

  Collab.fromJson(Map<String, dynamic> json) :
        title = json['title'],
        description = json['description'],
        images = List<Image>.from(json['images'].map((kvp) => Image.fromJson(kvp))),
        price = json['price'],
        sender = json['sender'],
        receiver = json['receiver'],
        isFinished = json['is_finished'];

  @override
  Map<String, Object?> toJson() => {
    'title': title,
    'description': description,
    'images': jsonEncode(images),
    'price': price,
    'sender': sender,
    'receiver': receiver,
    'is_finished': isFinished
  };
}