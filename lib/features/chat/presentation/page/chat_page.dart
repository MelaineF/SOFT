import 'package:Swipe/core/firebase/database_service.dart';
import 'package:Swipe/features/chat/presentation/widget/message_title.dart';
import 'package:Swipe/features/login_register_feature/data/repository_impl/signin_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String groupId;
  final String groupName;
  final String userName;
  bool create;

  ChatPage(
      {Key? key,
      required this.groupId,
      required this.groupName,
      required this.userName,
      this.create = true})
      : super(key: key);

  /* {
    DatabaseService('76TVeH2u6babFSj0ao4LuFH0bgI3')
        .createGroup(userName, groupId, groupName);
  }*/

  /* {
    if (create) {
      DatabaseService('oCj0Mow6UMgnIBU02J9v7L77x7K2')
          .createGroup(userName, groupId, groupName);
    } else {
      DatabaseService('oCj0Mow6UMgnIBU02J9v7L77x7K2').getGroup(groupId);
    }
  }*/

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  Stream<QuerySnapshot>? chats;
  TextEditingController messageController = TextEditingController();
  String admin = '';

  @override
  void initState() {
    getChatandAdmin();
    super.initState();
  }

  getChatandAdmin() {
    DatabaseService(null).getChats(widget.groupId).then((val) {
      setState(() {
        chats = val;
      });
    });
    DatabaseService(null).getGroupAdmin(widget.groupId).then((val) {
      setState(() {
        admin = val;
      });
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            widget.groupName,
            // style: const TextStyle(color: AppColors.white),
          ),
          backgroundColor: Colors.black12,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: chatMessages(),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[700],
                child: Row(children: [
                  Expanded(
                    child: TextFormField(
                      controller: messageController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: 'Send a message...',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      sendMessage();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.send,
                        color: Colors.white,
                      )),
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
      );

  chatMessages() => StreamBuilder(
        stream: chats,
        builder: (BuildContext context, AsyncSnapshot snapshot) =>
            snapshot.hasData
                ? ListView.builder(
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      int timestamp = snapshot.data.docs[index]['time'];
                      DateTime dateTime =
                          DateTime.fromMillisecondsSinceEpoch(timestamp);
                      // Formater l'heure et les minutes au format "HH:MM"
                      String formattedTime =
                          '${dateTime.hour.toString().padLeft(2, '0')}'
                          ':${dateTime.minute.toString().padLeft(2, '0')}';

                      return MessageTile(
                        message: snapshot.data.docs[index]['message'],
                        sender: snapshot.data.docs[index]['sender'],
                        sentByMe: widget.userName ==
                            snapshot.data.docs[index]['sender'],
                        time: formattedTime,
                      );
                    })
                : Container(),
      );

  sendMessage() {
    if (messageController.text.isNotEmpty) {
      Map<String, dynamic> chatMessageMap = {
        'message': messageController.text,
        'sender': widget.userName,
        'time': DateTime.now().millisecondsSinceEpoch,
      };

      DatabaseService(null).sendMessage(widget.groupId, chatMessageMap);
      setState(() {
        messageController.clear();
      });
    }
  }
}
