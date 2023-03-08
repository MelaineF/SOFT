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
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;

import '../../features/commun_feature/presentation/page/setting_page.dart'
    as _i13;
import '../../features/home/presentation/page/home_brand_page.dart' as _i14;
import '../../features/home/presentation/page/home_content_creator_page.dart'
    as _i15;
import '../../features/home/presentation/page/home_page.dart' as _i7;
import '../../features/lost_connection/presentation/page/checkConnexion.dart'
    as _i2;
import '../../features/profil_feature/presentation/page/collaboration_brand_page.dart'
    as _i11;
import '../../features/profil_feature/presentation/page/edit_profil_brand_page.dart'
    as _i9;
import '../../features/profil_feature/presentation/page/invitation_page.dart'
    as _i10;
import '../../features/profil_feature/presentation/page/my_profil_brand_page.dart'
    as _i8;
import '../../features/profil_feature/presentation/page/profil_content_creator_page.dart'
    as _i16;
import '../../features/root_feature/presentation/widget/root.dart' as _i3;
import '../../features/search_feature/presentation/page/main_search_page.dart'
    as _i12;
import '../../features/signin_page/presentation/page/first_connexion_page.dart'
    as _i4;
import '../../features/signin_page/presentation/page/signin_page.dart' as _i5;
import '../../features/signup_page/presentation/page/register_page.dart' as _i6;
import '../../features/splash_screen_feature/presentation/page/splash_screen.dart'
    as _i1;

class AppRouter extends _i17.RootStackRouter {
  AppRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreenPage(),
      );
    },
    CheckConnexionRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.CheckConnexionPage(),
      );
    },
    RootRoute.name: (routeData) {
      final args =
          routeData.argsAs<RootRouteArgs>(orElse: () => const RootRouteArgs());
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.RootPage(key: args.key),
      );
    },
    FirstConnectionRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.FirstConnectionPage(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>();
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.SignInPage(
          key: args.key,
          onLoginCallback: args.onLoginCallback,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>();
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.RegisterPage(
          key: args.key,
          onLoginCallback: args.onLoginCallback,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.HomePage(),
      );
    },
    MyProfilBrandRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.MyProfilBrandPage(),
      );
    },
    EditProfilBrandRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfilBrandRouteArgs>(
          orElse: () => const EditProfilBrandRouteArgs());
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.EditProfilBrandPage(key: args.key),
      );
    },
    InvitationRoute.name: (routeData) {
      final args = routeData.argsAs<InvitationRouteArgs>(
          orElse: () => const InvitationRouteArgs());
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.InvitationPage(key: args.key),
      );
    },
    CollaborationBrandRoute.name: (routeData) {
      final args = routeData.argsAs<CollaborationBrandRouteArgs>(
          orElse: () => const CollaborationBrandRouteArgs());
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.CollaborationBrandPage(key: args.key),
      );
    },
    MainSearchRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.MainSearchPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.SettingPage(),
      );
    },
    HomeBrandRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.HomeBrandPage(),
      );
    },
    HomeContentCreatorRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.HomeContentCreatorPage(),
      );
    },
    ProfilContentCreatorRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.ProfilContentCreatorPage(),
      );
    },
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i17.RouteConfig(
          CheckConnexionRoute.name,
          path: '/check-connexion-page',
        ),
        _i17.RouteConfig(
          RootRoute.name,
          path: '/root-page',
        ),
        _i17.RouteConfig(
          FirstConnectionRoute.name,
          path: '/first-connection-page',
        ),
        _i17.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i17.RouteConfig(
          RegisterRoute.name,
          path: '/register-page',
        ),
        _i17.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
          children: [
            _i17.RouteConfig(
              HomeBrandRoute.name,
              path: 'home-brand-page',
              parent: HomeRoute.name,
            ),
            _i17.RouteConfig(
              HomeContentCreatorRoute.name,
              path: 'home-content-creator-page',
              parent: HomeRoute.name,
            ),
            _i17.RouteConfig(
              ProfilContentCreatorRoute.name,
              path: 'profil-content-creator-page',
              parent: HomeRoute.name,
            ),
          ],
        ),
        _i17.RouteConfig(
          MyProfilBrandRoute.name,
          path: '/my-profil-brand-page',
        ),
        _i17.RouteConfig(
          EditProfilBrandRoute.name,
          path: '/edit-profil-brand-page',
        ),
        _i17.RouteConfig(
          InvitationRoute.name,
          path: '/invitation-page',
        ),
        _i17.RouteConfig(
          CollaborationBrandRoute.name,
          path: '/collaboration-brand-page',
        ),
        _i17.RouteConfig(
          MainSearchRoute.name,
          path: '/main-search-page',
        ),
        _i17.RouteConfig(
          SettingRoute.name,
          path: '/setting-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreenPage]
class SplashScreenRoute extends _i17.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.CheckConnexionPage]
class CheckConnexionRoute extends _i17.PageRouteInfo<void> {
  const CheckConnexionRoute()
      : super(
          CheckConnexionRoute.name,
          path: '/check-connexion-page',
        );

  static const String name = 'CheckConnexionRoute';
}

/// generated route for
/// [_i3.RootPage]
class RootRoute extends _i17.PageRouteInfo<RootRouteArgs> {
  RootRoute({_i18.Key? key})
      : super(
          RootRoute.name,
          path: '/root-page',
          args: RootRouteArgs(key: key),
        );

  static const String name = 'RootRoute';
}

class RootRouteArgs {
  const RootRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'RootRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.FirstConnectionPage]
class FirstConnectionRoute extends _i17.PageRouteInfo<void> {
  const FirstConnectionRoute()
      : super(
          FirstConnectionRoute.name,
          path: '/first-connection-page',
        );

  static const String name = 'FirstConnectionRoute';
}

/// generated route for
/// [_i5.SignInPage]
class SignInRoute extends _i17.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i18.Key? key,
    required dynamic Function(bool) onLoginCallback,
  }) : super(
          SignInRoute.name,
          path: '/sign-in-page',
          args: SignInRouteArgs(
            key: key,
            onLoginCallback: onLoginCallback,
          ),
        );

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({
    this.key,
    required this.onLoginCallback,
  });

  final _i18.Key? key;

  final dynamic Function(bool) onLoginCallback;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onLoginCallback: $onLoginCallback}';
  }
}

/// generated route for
/// [_i6.RegisterPage]
class RegisterRoute extends _i17.PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    _i18.Key? key,
    required dynamic Function(bool) onLoginCallback,
  }) : super(
          RegisterRoute.name,
          path: '/register-page',
          args: RegisterRouteArgs(
            key: key,
            onLoginCallback: onLoginCallback,
          ),
        );

  static const String name = 'RegisterRoute';
}

class RegisterRouteArgs {
  const RegisterRouteArgs({
    this.key,
    required this.onLoginCallback,
  });

  final _i18.Key? key;

  final dynamic Function(bool) onLoginCallback;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key, onLoginCallback: $onLoginCallback}';
  }
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i17.PageRouteInfo<void> {
  const HomeRoute({List<_i17.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/home-page',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i8.MyProfilBrandPage]
class MyProfilBrandRoute extends _i17.PageRouteInfo<void> {
  const MyProfilBrandRoute()
      : super(
          MyProfilBrandRoute.name,
          path: '/my-profil-brand-page',
        );

  static const String name = 'MyProfilBrandRoute';
}

/// generated route for
/// [_i9.EditProfilBrandPage]
class EditProfilBrandRoute
    extends _i17.PageRouteInfo<EditProfilBrandRouteArgs> {
  EditProfilBrandRoute({_i18.Key? key})
      : super(
          EditProfilBrandRoute.name,
          path: '/edit-profil-brand-page',
          args: EditProfilBrandRouteArgs(key: key),
        );

  static const String name = 'EditProfilBrandRoute';
}

class EditProfilBrandRouteArgs {
  const EditProfilBrandRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'EditProfilBrandRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.InvitationPage]
class InvitationRoute extends _i17.PageRouteInfo<InvitationRouteArgs> {
  InvitationRoute({_i18.Key? key})
      : super(
          InvitationRoute.name,
          path: '/invitation-page',
          args: InvitationRouteArgs(key: key),
        );

  static const String name = 'InvitationRoute';
}

class InvitationRouteArgs {
  const InvitationRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'InvitationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.CollaborationBrandPage]
class CollaborationBrandRoute
    extends _i17.PageRouteInfo<CollaborationBrandRouteArgs> {
  CollaborationBrandRoute({_i18.Key? key})
      : super(
          CollaborationBrandRoute.name,
          path: '/collaboration-brand-page',
          args: CollaborationBrandRouteArgs(key: key),
        );

  static const String name = 'CollaborationBrandRoute';
}

class CollaborationBrandRouteArgs {
  const CollaborationBrandRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'CollaborationBrandRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.MainSearchPage]
class MainSearchRoute extends _i17.PageRouteInfo<void> {
  const MainSearchRoute()
      : super(
          MainSearchRoute.name,
          path: '/main-search-page',
        );

  static const String name = 'MainSearchRoute';
}

/// generated route for
/// [_i13.SettingPage]
class SettingRoute extends _i17.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: '/setting-page',
        );

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i14.HomeBrandPage]
class HomeBrandRoute extends _i17.PageRouteInfo<void> {
  const HomeBrandRoute()
      : super(
          HomeBrandRoute.name,
          path: 'home-brand-page',
        );

  static const String name = 'HomeBrandRoute';
}

/// generated route for
/// [_i15.HomeContentCreatorPage]
class HomeContentCreatorRoute extends _i17.PageRouteInfo<void> {
  const HomeContentCreatorRoute()
      : super(
          HomeContentCreatorRoute.name,
          path: 'home-content-creator-page',
        );

  static const String name = 'HomeContentCreatorRoute';
}

/// generated route for
/// [_i16.ProfilContentCreatorPage]
class ProfilContentCreatorRoute extends _i17.PageRouteInfo<void> {
  const ProfilContentCreatorRoute()
      : super(
          ProfilContentCreatorRoute.name,
          path: 'profil-content-creator-page',
        );

  static const String name = 'ProfilContentCreatorRoute';
}
