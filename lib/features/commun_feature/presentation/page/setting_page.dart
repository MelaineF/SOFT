import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4,
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      height: 100,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 5),
                            child: InkWell(
                              child: const Icon(
                                Icons.close_rounded,
                                size: 30,
                              ),
                              onTap: () {
                                context.router.pop();
                              },
                            ),
                          ),
                          const Expanded(child: Text('Options')),
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: const Text('Menu liste des options'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
