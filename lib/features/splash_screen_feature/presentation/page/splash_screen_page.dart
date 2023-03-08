import 'package:Swipe/core/config/app.config.dart';
import 'package:Swipe/core/navigation/app.router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
      duration: const Duration(seconds: (2)),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 50.0, end: 200.0),
                    duration: const Duration(seconds: 2),
                    builder: (BuildContext context, double value, _) =>
                        Image.asset(
                      AppConfig.logo,
                      width: value,
                      height: value,
                    ),
                    onEnd: () => context.router.push(RootRoute()),
                  ),
                  const SizedBox(
                    height: 30,
                    width: double.infinity,
                  ),
                  const Text(
                    'SWIPE',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
