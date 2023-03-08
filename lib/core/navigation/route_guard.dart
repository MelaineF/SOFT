import 'package:Swipe/core/navigation/app.router.gr.dart';
import 'package:Swipe/core/util/auth_service.dart';
import 'package:auto_route/auto_route.dart';

class RouteGuard extends AutoRedirectGuard {
  RouteGuard(this.authService) {
    authService.addListener(() {
      if (!authService.authenticated) {
        reevaluate();
      }
    });
  }

  final AuthService authService;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authService.authenticated) return resolver.next();
    // Navigate to login screen
    router.push(
      SignInRoute(
        onLoginCallback: (_) {
          resolver.next();
          router.removeLast();
        },
      ),
    );
  }

  @override
  Future<bool> canNavigate(RouteMatch route) {
    // TODO: implement canNavigate
    throw UnimplementedError();
  }
}
