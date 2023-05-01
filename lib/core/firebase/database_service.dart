import 'package:Swipe/core/isar/user_connected.dart';
import 'package:Swipe/core/isar/user_isar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../isar/group_isar.dart';

class DatabaseService {
  DatabaseService(this.uid);

  final String? uid;

  // reference for our collections
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');
  final CollectionReference groupCollection =
      FirebaseFirestore.instance.collection('groups');

  // saving the userdata
  Future savingUserData(String fullName, String email) async =>
      await userCollection.doc(uid).set({
        'fullName': fullName,
        'email': email,
        'groups': [],
        'profilePic': '',
        'uid': uid,
      });

  // getting user data
  Future<QuerySnapshot> gettingUserData(String email) async {
    QuerySnapshot snapshot =
        await userCollection.where('email', isEqualTo: email).get();
    return snapshot;
  }

  // get user groups
  Future<DocumentSnapshot> getUserGroups() async =>
      await userCollection.doc(uid).get();

  Future<List<UserConnected>> getConnectedUser() async {
    QuerySnapshot<Object?> data = await userCollection.get();
    List<QueryDocumentSnapshot<Object?>> snapshots = data.docs;

    List<UserConnected> userConnectedList =
        snapshots.map((QueryDocumentSnapshot<Object?> snapshot) {
      Map<String, dynamic> json = snapshot.data() as Map<String, dynamic>;
      json['id'] = snapshot.id;
      return UserConnected.fromJson(json);
    }).toList();

    return userConnectedList;
  }

  Future<List<UserIsar>> getUsers() async {
    QuerySnapshot<Object?> data = await userCollection.get();
    List<QueryDocumentSnapshot<Object?>> snapshots = data.docs;

    List<UserIsar> userConnectedList =
        snapshots.map((QueryDocumentSnapshot<Object?> snapshot) {
      Map<String, dynamic> json = snapshot.data() as Map<String, dynamic>;
      json['id'] = snapshot.id;
      return UserIsar.fromJson(json);
    }).toList();

    return userConnectedList;
  }

  // creating a group
  Future createGroup(String userName, String id, String groupName) async {
    DocumentReference groupDocumentReference = await groupCollection.add({
      'groupName': groupName,
      'groupIcon': '',
      'admin': '${id}_$userName',
      'members': [],
      'groupId': '',
      'recentMessage': '',
      'recentMessageSender': '',
    });
    // update the members
    await groupDocumentReference.update({
      'members': FieldValue.arrayUnion(['${uid}_$userName']),
      'groupId': groupDocumentReference.id,
    });

    DocumentReference userDocumentReference = userCollection.doc(uid);
    return await userDocumentReference.update({
      'groups':
          FieldValue.arrayUnion(['${groupDocumentReference.id}_$groupName'])
    });
  }

  // getting the chats
  getChats(String groupId) async => groupCollection
      .doc(groupId)
      .collection('messages')
      .orderBy('time')
      .snapshots();

  getGroup(String groupId) async => groupCollection.doc(groupId).get();

  Future<List<GroupIsar>> getGroups() async =>
      groupCollection.get().then((querySnapshot) {
        List<GroupIsar> groups = [];
        querySnapshot.docs.forEach((doc) {
          Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
          GroupIsar group = GroupIsar.fromJson(data);
          groups.add(group);
        });
        return groups;
      });

  Future getGroupAdmin(String groupId) async {
    DocumentReference d = groupCollection.doc(groupId);
    DocumentSnapshot documentSnapshot = await d.get();
    return documentSnapshot['admin'];
  }

  // get group members
  getGroupMembers(groupId) async => groupCollection.doc(groupId).snapshots();

  // search
  searchByName(String groupName) =>
      groupCollection.where('groupName', isEqualTo: groupName).get();

  // function -> bool
  Future<bool> isUserJoined(
      String groupName, String groupId, String userName) async {
    DocumentReference userDocumentReference = userCollection.doc(uid);
    DocumentSnapshot documentSnapshot = await userDocumentReference.get();

    List<dynamic> groups = await documentSnapshot['groups'];
    if (groups.contains('${groupId}_$groupName')) {
      return true;
    } else {
      return false;
    }
  }

  // toggling the group join/exit
  Future toggleGroupJoin(
      String groupId, String userName, String groupName) async {
    // doc reference
    DocumentReference userDocumentReference = userCollection.doc(uid);
    DocumentReference groupDocumentReference = groupCollection.doc(groupId);

    DocumentSnapshot documentSnapshot = await userDocumentReference.get();
    List<dynamic> groups = await documentSnapshot['groups'];

    // if user has our groups -> then remove then or also in other part re join
    if (groups.contains('${groupId}_$groupName')) {
      await userDocumentReference.update({
        'groups': FieldValue.arrayRemove(['${groupId}_$groupName'])
      });
      await groupDocumentReference.update({
        'members': FieldValue.arrayRemove(['${uid}_$userName'])
      });
    } else {
      await userDocumentReference.update({
        'groups': FieldValue.arrayUnion(['${groupId}_$groupName'])
      });
      await groupDocumentReference.update({
        'members': FieldValue.arrayUnion(['${uid}_$userName'])
      });
    }
  }

  // send message
  sendMessage(String groupId, Map<String, dynamic> chatMessageData) async {
    groupCollection.doc(groupId).collection('messages').add(chatMessageData);
    groupCollection.doc(groupId).update({
      'recentMessage': chatMessageData['message'],
      'recentMessageSender': chatMessageData['sender'],
      'recentMessageTime': chatMessageData['time'].toString(),
    });
  }
}
