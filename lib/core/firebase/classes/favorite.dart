class Favorite {
  String collab;
  String user;
  DateTime timestamp;

  Favorite(this.collab, this.user) : timestamp = DateTime.now();

  Favorite.fromJson(Map<String, dynamic> json) :
        collab = json['collaboration'],
        user = json['user'],
        timestamp = json['timestamp'];

  Map<String, dynamic> toJson() => {
    'collaboration': collab,
    'user': user,
    'timestamp': timestamp
  };
}