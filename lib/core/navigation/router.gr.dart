// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../features/home_brand_feature/presentation/page/home_brand_page.dart'
    as _i3;
import '../../features/home_content_creator_feature/presentation/page/home_content_creator_page.dart'
    as _i4;
import '../../features/profil_brand_feature/presentation/page/profil_brand_page.dart'
    as _i5;
import '../../features/profil_content_creator_feature/presentation/page/profil_content_creator_page.dart'
    as _i6;
import '../../features/root/presentation/page/root_page.dart' as _i2;
import '../../features/splash_screen_feature/presentation/page/spash_screen.dart'
    as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreenPage(),
      );
    },
    RootRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.RootPage(),
      );
    },
    HomeBrandRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeBrandPage(),
      );
    },
    HomeContentCreatorRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomeContentCreatorPage(),
      );
    },
    ProfilBrandRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ProfilBrandPage(),
      );
    },
    ProfilContentCreatorRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProfilContentCreatorPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          RootRoute.name,
          path: '/home',
          children: [
            _i7.RouteConfig(
              HomeBrandRouter.name,
              path: 'home-brand',
              parent: RootRoute.name,
            ),
            _i7.RouteConfig(
              HomeContentCreatorRouter.name,
              path: 'home-content',
              parent: RootRoute.name,
            ),
            _i7.RouteConfig(
              ProfilBrandRouter.name,
              path: 'profil-brand',
              parent: RootRoute.name,
            ),
            _i7.RouteConfig(
              ProfilContentCreatorRouter.name,
              path: 'profil-content-creator',
              parent: RootRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreenPage]
class SplashScreenRoute extends _i7.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.RootPage]
class RootRoute extends _i7.PageRouteInfo<void> {
  const RootRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RootRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'RootRoute';
}

/// generated route for
/// [_i3.HomeBrandPage]
class HomeBrandRouter extends _i7.PageRouteInfo<void> {
  const HomeBrandRouter()
      : super(
          HomeBrandRouter.name,
          path: 'home-brand',
        );

  static const String name = 'HomeBrandRouter';
}

/// generated route for
/// [_i4.HomeContentCreatorPage]
class HomeContentCreatorRouter extends _i7.PageRouteInfo<void> {
  const HomeContentCreatorRouter()
      : super(
          HomeContentCreatorRouter.name,
          path: 'home-content',
        );

  static const String name = 'HomeContentCreatorRouter';
}

/// generated route for
/// [_i5.ProfilBrandPage]
class ProfilBrandRouter extends _i7.PageRouteInfo<void> {
  const ProfilBrandRouter()
      : super(
          ProfilBrandRouter.name,
          path: 'profil-brand',
        );

  static const String name = 'ProfilBrandRouter';
}

/// generated route for
/// [_i6.ProfilContentCreatorPage]
class ProfilContentCreatorRouter extends _i7.PageRouteInfo<void> {
  const ProfilContentCreatorRouter()
      : super(
          ProfilContentCreatorRouter.name,
          path: 'profil-content-creator',
        );

  static const String name = 'ProfilContentCreatorRouter';
}
