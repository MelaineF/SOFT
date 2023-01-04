class Image {
  String alt;
  String url;

  Image(this.alt, this.url);

  Image.fromJson(Map<String, dynamic> json) :
        alt = json['alt'],
        url = json['url'];

  Map<String, Object?> toJson() => {
    'alt': alt,
    'url': url
  };
}