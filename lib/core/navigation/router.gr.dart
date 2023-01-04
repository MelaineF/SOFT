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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../features/home_brand_feature/presentation/page/home_brand_page.dart'
    as _i2;
import '../../features/home_content_creator_feature/presentation/page/home_content_creator_page.dart'
    as _i3;
import '../../features/profil_brand_feature/presentation/page/profil_brand_page.dart'
    as _i4;
import '../../features/profil_content_creator_feature/presentation/page/profil_content_creator_page.dart'
    as _i5;
import '../../features/root/presentation/page/root_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    RootRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.RootPage(),
      );
    },
    HomeBrandRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomeBrandPage(),
      );
    },
    HomeContentCreatorRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeContentCreatorPage(),
      );
    },
    ProfilBrandRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ProfilBrandPage(),
      );
    },
    ProfilContentCreatorRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ProfilContentCreatorPage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          RootRoute.name,
          path: '/',
          children: [
            _i6.RouteConfig(
              HomeBrandRouter.name,
              path: 'home-brand',
              parent: RootRoute.name,
            ),
            _i6.RouteConfig(
              HomeContentCreatorRouter.name,
              path: 'home-content',
              parent: RootRoute.name,
            ),
            _i6.RouteConfig(
              ProfilBrandRouter.name,
              path: 'profil-brand',
              parent: RootRoute.name,
            ),
            _i6.RouteConfig(
              ProfilContentCreatorRouter.name,
              path: 'profil-content-creator',
              parent: RootRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.RootPage]
class RootRoute extends _i6.PageRouteInfo<void> {
  const RootRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RootRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'RootRoute';
}

/// generated route for
/// [_i2.HomeBrandPage]
class HomeBrandRouter extends _i6.PageRouteInfo<void> {
  const HomeBrandRouter()
      : super(
          HomeBrandRouter.name,
          path: 'home-brand',
        );

  static const String name = 'HomeBrandRouter';
}

/// generated route for
/// [_i3.HomeContentCreatorPage]
class HomeContentCreatorRouter extends _i6.PageRouteInfo<void> {
  const HomeContentCreatorRouter()
      : super(
          HomeContentCreatorRouter.name,
          path: 'home-content',
        );

  static const String name = 'HomeContentCreatorRouter';
}

/// generated route for
/// [_i4.ProfilBrandPage]
class ProfilBrandRouter extends _i6.PageRouteInfo<void> {
  const ProfilBrandRouter()
      : super(
          ProfilBrandRouter.name,
          path: 'profil-brand',
        );

  static const String name = 'ProfilBrandRouter';
}

/// generated route for
/// [_i5.ProfilContentCreatorPage]
class ProfilContentCreatorRouter extends _i6.PageRouteInfo<void> {
  const ProfilContentCreatorRouter()
      : super(
          ProfilContentCreatorRouter.name,
          path: 'profil-content-creator',
        );

  static const String name = 'ProfilContentCreatorRouter';
}
