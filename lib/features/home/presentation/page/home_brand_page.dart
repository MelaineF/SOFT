import 'package:Swipe/core/util/helper_function.dart';
import 'package:Swipe/features/home/presentation/widget/swipe_card.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../../core/firebase/database_service.dart';

class HomeBrandPage extends StatefulWidget {
  const HomeBrandPage({Key? key}) : super(key: key);

  @override
  State<HomeBrandPage> createState() => _HomeBrandPageState();
}

// 'assets/images/card_humain_1.png'
// 'assets/images/card_humain_2.png'
// 'assets/images/card_humain_3.png'

class _HomeBrandPageState extends State<HomeBrandPage> {
  late String userEmail = 'nobody';

  final DatabaseService _databaseService = DatabaseService(null);
  List<String> usersEmail = [];
  List<String> usersFullnae = [];

  @override
  void initState() {
    getUserEmail();
    super.initState();
  }

  void getUserEmail() async {
    userEmail = await HelperFunctions.getUserEmailFromSF() ?? '';
    List<dynamic> users = await _databaseService.getConnectedUser();
    users.forEach((document) {
      //print('${document.data()}');
    });
  }

  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              BoxFit.fill;
              switch (index) {
                case 0:
                  return SwipeCard(
                    picturePath: 'assets/images/card_humain_1.png',
                    creatorName: 'The super creator',
                    userEmail: userEmail,
                  );
                case 1:
                  return SwipeCard(
                    picturePath: 'assets/images/card_humain_2.png',
                    creatorName: 'Aurelien 3',
                    userEmail: userEmail,
                  );
                case 2:
                  return SwipeCard(
                    picturePath: 'assets/images/card_humain_3.png',
                    creatorName: 'Aurelien 4',
                    userEmail: userEmail,
                  );
                default:
                  return SwipeCard(
                    picturePath: 'assets/images/card_humain_1.png',
                    creatorName: 'Humain 1',
                    userEmail: userEmail,
                  );
              }
            },
            itemCount: 3,
            pagination: const SwiperPagination(),
            control: const SwiperControl(),
          ),
        ),
      );
}
