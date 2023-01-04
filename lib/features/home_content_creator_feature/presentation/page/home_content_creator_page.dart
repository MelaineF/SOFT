import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              fit:
              BoxFit.fill;

              switch (index) {
                case 1:
                  return Image.asset('assets/images/card4.png');
                  break;
                case 2:
                  return Image.asset('assets/images/card5.png');
                  break;
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
