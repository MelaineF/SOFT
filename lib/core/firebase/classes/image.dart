class Image {
  String alt;
  String url;

  Image(this.alt, this.url);

  Image.fromJson(Map<String, dynamic> json) :
        alt = json['alt'],
        url = json['url'];

  Map<String, dynamic> toJson() => {
    'alt': alt,
    'url': url
  };
}