import 'package:Swipe/features/root/data/models/firebase_data.dart';

class Image implements IFirebaseData {
  String alt;
  String url;

  Image(this.alt, this.url);

  Image.fromJson(Map<String, dynamic> json) :
        alt = json['alt'],
        url = json['url'];

  @override
  Map<String, Object?> toJson() => {
    'alt': alt,
    'url': url
  };
}