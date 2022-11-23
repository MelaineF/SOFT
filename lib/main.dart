import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'features/home_page/presentation/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
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
      home: const MyHomePage(title: 'Soft project'),
    );
  }
}
