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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../../features/commun_feature/presentation/page/setting_page.dart'
    as _i8;
import '../../features/home_feature/presentation/page/home_brand_page.dart'
    as _i9;
import '../../features/home_feature/presentation/page/home_content_creator_page.dart'
    as _i10;
import '../../features/profil_feature/presentation/page/collaboration_brand_page.dart'
    as _i6;
import '../../features/profil_feature/presentation/page/edit_profil_brand_page.dart'
    as _i4;
import '../../features/profil_feature/presentation/page/invitation_page.dart'
    as _i5;
import '../../features/profil_feature/presentation/page/my_profil_brand_page.dart'
    as _i3;
import '../../features/profil_feature/presentation/page/profil_content_creator_page.dart'
    as _i11;
import '../../features/root/presentation/page/root_page.dart' as _i2;
import '../../features/search_feature/presentation/page/main_search_page.dart'
    as _i7;
import '../../features/splash_screen_feature/presentation/page/splash_screen.dart'
    as _i1;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreenPage(),
      );
    },
    RootRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.RootPage(),
      );
    },
    MyProfilBrandRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MyProfilBrandPage(),
      );
    },
    EditProfilBrandRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfilBrandRouteArgs>(
          orElse: () => const EditProfilBrandRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.EditProfilBrandPage(key: args.key),
      );
    },
    InvitationRoute.name: (routeData) {
      final args = routeData.argsAs<InvitationRouteArgs>(
          orElse: () => const InvitationRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.InvitationPage(key: args.key),
      );
    },
    CollaborationBrandRoute.name: (routeData) {
      final args = routeData.argsAs<CollaborationBrandRouteArgs>(
          orElse: () => const CollaborationBrandRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.CollaborationBrandPage(key: args.key),
      );
    },
    MainSearchRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.MainSearchPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SettingPage(),
      );
    },
    HomeBrandRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.HomeBrandPage(),
      );
    },
    HomeContentCreatorRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.HomeContentCreatorPage(),
      );
    },
    ProfilContentCreatorRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.ProfilContentCreatorPage(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i12.RouteConfig(
          RootRoute.name,
          path: '/root-page',
          children: [
            _i12.RouteConfig(
              HomeBrandRoute.name,
              path: 'home-brand-page',
              parent: RootRoute.name,
            ),
            _i12.RouteConfig(
              HomeContentCreatorRoute.name,
              path: 'home-content-creator-page',
              parent: RootRoute.name,
            ),
            _i12.RouteConfig(
              ProfilContentCreatorRoute.name,
              path: 'profil-content-creator-page',
              parent: RootRoute.name,
            ),
          ],
        ),
        _i12.RouteConfig(
          MyProfilBrandRoute.name,
          path: '/my-profil-brand-page',
        ),
        _i12.RouteConfig(
          EditProfilBrandRoute.name,
          path: '/edit-profil-brand-page',
        ),
        _i12.RouteConfig(
          InvitationRoute.name,
          path: '/invitation-page',
        ),
        _i12.RouteConfig(
          CollaborationBrandRoute.name,
          path: '/collaboration-brand-page',
        ),
        _i12.RouteConfig(
          MainSearchRoute.name,
          path: '/main-search-page',
        ),
        _i12.RouteConfig(
          SettingRoute.name,
          path: '/setting-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreenPage]
class SplashScreenRoute extends _i12.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.RootPage]
class RootRoute extends _i12.PageRouteInfo<void> {
  const RootRoute({List<_i12.PageRouteInfo>? children})
      : super(
          RootRoute.name,
          path: '/root-page',
          initialChildren: children,
        );

  static const String name = 'RootRoute';
}

/// generated route for
/// [_i3.MyProfilBrandPage]
class MyProfilBrandRoute extends _i12.PageRouteInfo<void> {
  const MyProfilBrandRoute()
      : super(
          MyProfilBrandRoute.name,
          path: '/my-profil-brand-page',
        );

  static const String name = 'MyProfilBrandRoute';
}

/// generated route for
/// [_i4.EditProfilBrandPage]
class EditProfilBrandRoute
    extends _i12.PageRouteInfo<EditProfilBrandRouteArgs> {
  EditProfilBrandRoute({_i13.Key? key})
      : super(
          EditProfilBrandRoute.name,
          path: '/edit-profil-brand-page',
          args: EditProfilBrandRouteArgs(key: key),
        );

  static const String name = 'EditProfilBrandRoute';
}

class EditProfilBrandRouteArgs {
  const EditProfilBrandRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'EditProfilBrandRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.InvitationPage]
class InvitationRoute extends _i12.PageRouteInfo<InvitationRouteArgs> {
  InvitationRoute({_i13.Key? key})
      : super(
          InvitationRoute.name,
          path: '/invitation-page',
          args: InvitationRouteArgs(key: key),
        );

  static const String name = 'InvitationRoute';
}

class InvitationRouteArgs {
  const InvitationRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'InvitationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.CollaborationBrandPage]
class CollaborationBrandRoute
    extends _i12.PageRouteInfo<CollaborationBrandRouteArgs> {
  CollaborationBrandRoute({_i13.Key? key})
      : super(
          CollaborationBrandRoute.name,
          path: '/collaboration-brand-page',
          args: CollaborationBrandRouteArgs(key: key),
        );

  static const String name = 'CollaborationBrandRoute';
}

class CollaborationBrandRouteArgs {
  const CollaborationBrandRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'CollaborationBrandRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.MainSearchPage]
class MainSearchRoute extends _i12.PageRouteInfo<void> {
  const MainSearchRoute()
      : super(
          MainSearchRoute.name,
          path: '/main-search-page',
        );

  static const String name = 'MainSearchRoute';
}

/// generated route for
/// [_i8.SettingPage]
class SettingRoute extends _i12.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: '/setting-page',
        );

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i9.HomeBrandPage]
class HomeBrandRoute extends _i12.PageRouteInfo<void> {
  const HomeBrandRoute()
      : super(
          HomeBrandRoute.name,
          path: 'home-brand-page',
        );

  static const String name = 'HomeBrandRoute';
}

/// generated route for
/// [_i10.HomeContentCreatorPage]
class HomeContentCreatorRoute extends _i12.PageRouteInfo<void> {
  const HomeContentCreatorRoute()
      : super(
          HomeContentCreatorRoute.name,
          path: 'home-content-creator-page',
        );

  static const String name = 'HomeContentCreatorRoute';
}

/// generated route for
/// [_i11.ProfilContentCreatorPage]
class ProfilContentCreatorRoute extends _i12.PageRouteInfo<void> {
  const ProfilContentCreatorRoute()
      : super(
          ProfilContentCreatorRoute.name,
          path: 'profil-content-creator-page',
        );

  static const String name = 'ProfilContentCreatorRoute';
}
