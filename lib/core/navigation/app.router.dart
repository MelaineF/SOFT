import 'package:Swipe/features/commun_feature/presentation/page/setting_page.dart';
import 'package:Swipe/features/home/presentation/page/home_brand_page.dart';
import 'package:Swipe/features/home/presentation/page/home_content_creator_page.dart';
import 'package:Swipe/features/home/presentation/page/home_page.dart';
import 'package:Swipe/features/profil_feature/presentation/page/collaboration_brand_page.dart';
import 'package:Swipe/features/profil_feature/presentation/page/edit_profil_brand_page.dart';
import 'package:Swipe/features/profil_feature/presentation/page/invitation_page.dart';
import 'package:Swipe/features/profil_feature/presentation/page/my_profil_brand_page.dart';
import 'package:Swipe/features/profil_feature/presentation/page/profil_content_creator_page.dart';
import 'package:Swipe/features/root_feature/presentation/widget/root.dart';
import 'package:Swipe/features/search_feature/presentation/page/main_search_page.dart';
import 'package:Swipe/features/signin_page/presentation/page/first_connexion_page.dart';
import 'package:Swipe/features/signin_page/presentation/page/signin_page.dart';
import 'package:Swipe/features/signup_page/presentation/page/register_page.dart';
import 'package:Swipe/features/splash_screen_feature/presentation/page/splash_screen.dart';
import 'package:auto_route/annotations.dart';

import '../../features/lost_connection/presentation/page/checkConnexion.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreenPage, initial: true),
    AutoRoute(
      page: CheckConnexionPage,
    ),
    AutoRoute(
      page: RootPage,
    ),
    AutoRoute(
      page: FirstConnectionPage,
    ),
    AutoRoute(
      page: SignInPage,
    ),
    AutoRoute(
      page: RegisterPage,
    ),
    AutoRoute(
      page: HomePage,
      //initial: true,
      children: <AutoRoute>[
        AutoRoute(
          page: HomeBrandPage,
        ),
        AutoRoute(
          page: HomeContentCreatorPage,
        ),
        AutoRoute(
          page: ProfilContentCreatorPage,
        ),
      ],
    ),
    AutoRoute(
      page: MyProfilBrandPage,
    ),
    AutoRoute(
      page: EditProfilBrandPage,
    ),
    AutoRoute(
      page: InvitationPage,
    ),
    AutoRoute(
      page: CollaborationBrandPage,
    ),
    AutoRoute(
      page: MainSearchPage,
    ),
    AutoRoute(
      page: SettingPage,
    ),
  ],
)
class $AppRouter {}
