import 'package:Swipe/core/navigation/router.gr.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  await dotenv.load(fileName: 'assets/dev.env');
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'Swipe project',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // List of all supported locales (language code followed by country code).
        // For this example, I'll be using Great Britain english and the French french
        supportedLocales: const [
          Locale('en', ''),
          Locale('fr', ''),
        ],
        localizationsDelegates: const [
          // This is where all translations are defined
          AppLocalizations.delegate,
          // Built-in delegate for the localisation of the Material widgets
          GlobalMaterialLocalizations.delegate,
          // Built-in localisation for text direction (left-to-right or right-to-left).
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback:
            (Locale? locale, Iterable<Locale> supportedLocales) {
          for (final supportedLocale in supportedLocales) {
            if (locale?.languageCode == supportedLocale.languageCode) {
              return supportedLocale;
            }
          }

          // If the language of the user isn't supported, the default locale should be used.
          return supportedLocales.first;
        },
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
      );
}
