import 'package:Swipe/features/home_brand_feature/presentation/page/home_brand_page.dart';
import 'package:Swipe/features/home_content_creator_feature/presentation/page/home_content_creator_page.dart';
import 'package:Swipe/features/profil_brand_feature/presentation/page/profil_brand_page.dart';
import 'package:Swipe/features/profil_content_creator_feature/presentation/page/profil_content_creator_page.dart';
import 'package:Swipe/features/root/presentation/page/root_page.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: RootPage,
      initial: true,
      children: <AutoRoute>[
        AutoRoute(
          path: 'home-brand',
          name: 'HomeBrandRouter',
          page: HomeBrandPage,
        ),
        AutoRoute(
          path: 'home-content',
          name: 'HomeContentCreatorRouter',
          page: HomeContentCreatorPage,
        ),
        AutoRoute(
          path: 'profil-brand',
          name: 'ProfilBrandRouter',
          page: ProfilBrandPage,
        ),
        AutoRoute(
          path: 'profil-content-creator',
          name: 'ProfilContentCreatorRouter',
          page: ProfilContentCreatorPage,
        ),
      ],
    ),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
