import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class HomeBrandPage extends StatefulWidget {
  const HomeBrandPage({Key? key}) : super(key: key);

  @override
  State<HomeBrandPage> createState() => _HomeBrandPageState();
}

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
                  case 1:
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48), // Image radius
                        child: Image.asset('assets/images/card_humain_1.png',
                            fit: BoxFit.cover),
                      ),
                    );
                  case 2:
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48), // Image radius
                        child: Image.asset('assets/images/card_humain_2.png',
                            fit: BoxFit.cover),
                      ),
                    );
                  default:
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48), // Image radius
                        child: Image.asset('assets/images/card_humain_3.png',
                            fit: BoxFit.cover),
                      ),
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
