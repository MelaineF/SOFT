import 'package:Swipe/core/config/app.config.dart';
import 'package:Swipe/core/navigation/app.router.gr.dart';
import 'package:Swipe/core/widget/custom_elevated_button.dart';
import 'package:Swipe/core/widget/custom_outlined_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FirstConnectionPage extends StatefulWidget {
  const FirstConnectionPage({super.key});

  @override
  State<FirstConnectionPage> createState() => _FirstConnectionPageState();
}

class _FirstConnectionPageState extends State<FirstConnectionPage> {
  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.white,
                  ),
                  Expanded(
                    flex: 3,
                    child: Image.asset(
                      AppConfig.logo2,
                      width: 250,
                    ),
                  ),
                  const SizedBox(width: double.infinity, height: 150),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: CustomOutlinedButtonButtonWidget(
                            label: AppLocalizations.of(context)!.connection,
                            onTape: () {
                              context.router.push(
                                SignInRoute(
                                  onLoginCallback: (bool bool) {
                                    context.router.push(
                                      //RootRoute(),
                                      const HomeRoute(),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 3,
                          child: CustomElevatedButtonButtonWidget(
                            label: AppLocalizations.of(context)!.register,
                            onTape: () {
                              context.router.push(
                                RegisterRoute(
                                  onLoginCallback: (bool bool) {
                                    context.router.push(
                                      // RootRoute(),
                                      const HomeRoute(),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(width: double.infinity),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
