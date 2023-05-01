import 'package:Swipe/core/helper/logger.dart';
import 'package:Swipe/core/isar/isar_mixin.dart';
import 'package:Swipe/core/navigation/app.router.gr.dart';
import 'package:Swipe/core/util/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  await dotenv.load(fileName: 'assets/dev.env');
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_handleBackgroundMessage);
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    logger.i(
      'Received FCM message in foreground: ${message.notification?.title}',
    );
  });

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

Future<void> _handleBackgroundMessage(RemoteMessage message) async {
  logger
    ..i('Handling a background message ${message.messageId}')
    ..i(message.data);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<MyAppState>()!;

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();
  late final AppRouter appRouter = AppRouter();

  // AppRouter(routeGuard: RouteGuard(authService));

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'Swipe project',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // primaryColor: AppColors.white,
        ),
        // List of all supported locales (language code followed
        // by country code).
        // For this example, I'll be using Great Britain english
        // and the French french
        supportedLocales: const <Locale>[
          Locale('en', ''),
          Locale('fr', ''),
        ],
        localizationsDelegates: const [
          // This is where all translations are defined
          AppLocalizations.delegate,
          // Built-in delegate for the localisation of the Material widgets
          GlobalMaterialLocalizations.delegate,
          // Built-in localisation for text direction (left-to-right
          // or right-to-left).
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback:
            (Locale? locale, Iterable<Locale> supportedLocales) {
          for (final Locale supportedLocale in supportedLocales) {
            if (locale?.languageCode == supportedLocale.languageCode) {
              return supportedLocale;
            }
          }

          // If the language of the user isn't supported, the default locale
          // should be used.
          return supportedLocales.first;
        },
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
      );
}
