import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../widget/swipe_card.dart';

class HomeBrandPage extends StatefulWidget {
  const HomeBrandPage({Key? key}) : super(key: key);

  @override
  State<HomeBrandPage> createState() => _HomeBrandPageState();
}

// 'assets/images/card_humain_1.png'
// 'assets/images/card_humain_2.png'
// 'assets/images/card_humain_3.png'

class _HomeBrandPageState extends State<HomeBrandPage> {
  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: Center(
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                fit:
                BoxFit.fill;
                switch (index) {
                  case 0:
                    return const SwipeCard(
                      picturePath: 'assets/images/card_humain_1.png',
                    );
                  case 1:
                    return const SwipeCard(
                      picturePath: 'assets/images/card_humain_2.png',
                    );
                  case 2:
                    return const SwipeCard(
                      picturePath: 'assets/images/card_humain_3.png',
                    );
                  default:
                    return const SwipeCard(
                      picturePath: 'assets/images/card_humain_1.png',
                    );
                }
              },
              itemCount: 3,
              pagination: const SwiperPagination(),
              control: const SwiperControl(),
            ),
          ),
        ),
      );
}
