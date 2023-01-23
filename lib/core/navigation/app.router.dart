import 'package:Swipe/features/home_feature/presentation/page/home_brand_page.dart';
import 'package:Swipe/features/home_feature/presentation/page/home_content_creator_page.dart';
import 'package:Swipe/features/profil_feature/presentation/page/collaboration_brand_page.dart';
import 'package:Swipe/features/profil_feature/presentation/page/edit_profil_brand_page.dart';
import 'package:Swipe/features/profil_feature/presentation/page/invitation_page.dart';
import 'package:Swipe/features/profil_feature/presentation/page/my_profil_brand_page.dart';
import 'package:Swipe/features/profil_feature/presentation/page/profil_content_creator_page.dart';
import 'package:Swipe/features/root/presentation/page/root_page.dart';
import 'package:Swipe/features/search_feature/presentation/page/main_search_page.dart';
import 'package:Swipe/features/splash_screen_feature/presentation/page/splash_screen.dart';
import 'package:auto_route/annotations.dart';

import '../../features/commun_feature/presentation/page/setting_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreenPage, initial: true),
    AutoRoute(
      page: RootPage,
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
