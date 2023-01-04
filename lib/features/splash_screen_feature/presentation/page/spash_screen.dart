import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreenPage>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: (4)),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              padding: const EdgeInsets.all(0.0),
              // width: 80.0,
              // height: 80.0,
              child: Lottie.asset(
                'assets/lotties/11515-swipe-right-arrows.json',
                controller: _controller,
                height: MediaQuery.of(context).size.height * 1,
                animate: true,
                onLoaded: (composition) {
                  _controller
                    ..duration = composition.duration
                    ..forward()
                        .whenComplete(() => context.navigateNamedTo('/home'));
                },
              ),
            ), //Container
          ),
        ),
      );
}
