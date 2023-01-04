class Invite {
  String description;
  String sender;
  String receiver;

  Invite(this.description, this.sender, this.receiver);

  Invite.fromJson(Map<String, dynamic> json) :
        description = json['description'],
        sender = json['sender'],
        receiver = json['receiver'];

  Map<String, Object?> toJson() => {
    'description': description,
    'sender': sender,
    'receiver': receiver
  };
}