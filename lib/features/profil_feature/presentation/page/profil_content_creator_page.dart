import 'package:Swipe/core/firebase/database_service.dart';
import 'package:Swipe/core/navigation/app.router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProfilContentCreatorPage extends StatefulWidget {
  const ProfilContentCreatorPage({Key? key}) : super(key: key);

  @override
  State<ProfilContentCreatorPage> createState() => _ProfilContentCreatorPageState();
}

class _ProfilContentCreatorPageState extends State<ProfilContentCreatorPage> {
  late List<DocumentSnapshot>? groupDocs;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    getChats();
    _scrollController.addListener(_scrollListener);
  }

  void getChats() async {
    DocumentSnapshot documentSnapshot = await DatabaseService('oCj0Mow6UMgnIBU02J9v7L77x7K2').getUserGroups();
    List<dynamic> groups = await documentSnapshot['groups'];

    groupDocs = [];
    for (String group in groups) {
      String groupId = group.substring(0, group.indexOf('_'));
      DocumentSnapshot g = await DatabaseService(null).getGroup(groupId);
      groupDocs!.add(g);
    }
  }

  void _scrollListener() {
    if (_scrollController.offset == 0.0 && _scrollController.position.maxScrollExtent > 0) {
      getChats();
    }
  }

  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: groupDocs?.length ?? 0,
      itemBuilder: (BuildContext context, int index) => InkWell(
            onTap: () {
              context.router.push(
                ChatRoute(
                  groupId: groupDocs![index]['groupId'],
                  groupName: "Chat",
                  userName: "Valentin",
                  create: false
                ),
              );
            },
            child: SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(groupDocs![index]['groupIcon']),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                  groupDocs![index]['groupName'],
                                  style: const TextStyle(fontWeight: FontWeight.bold))
                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text('${(groupDocs![index]['members'] as List<dynamic>).length} Membres')
                          ),
                        ],
                      )
                    ],
                  ),
                )
            ))
    );
}
