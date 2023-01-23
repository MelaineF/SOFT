import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class HomeContentCreatorPage extends StatefulWidget {
  const HomeContentCreatorPage({Key? key}) : super(key: key);

  @override
  State<HomeContentCreatorPage> createState() => _HomeContentCreatorPageState();
}

class _HomeContentCreatorPageState extends State<HomeContentCreatorPage> {
  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              BoxFit.fill;
              switch (index) {
                case 1:
                  return Image.asset('assets/images/card4.png');
                case 2:
                  return Image.asset('assets/images/card5.png');
                default:
                  return Image.asset('assets/images/card6.png');
              }
            },
            itemCount: 3,
            pagination: const SwiperPagination(),
            control: const SwiperControl(),
          ),
        ),
      );
}
