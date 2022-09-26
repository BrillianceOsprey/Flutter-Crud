// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    EmptyAuthRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyAuthPage(),
      );
    },
    EmptyHomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyHomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          EmptyAuthRoute.name,
          path: '/auth',
          children: [
            RouteConfig(
              LoginRoute.name,
              path: '',
              parent: EmptyAuthRoute.name,
            ),
            RouteConfig(
              RegisterRoute.name,
              path: 'register',
              parent: EmptyAuthRoute.name,
            ),
          ],
        ),
        RouteConfig(
          EmptyHomeRoute.name,
          path: '/home',
          children: [
            RouteConfig(
              HomeRoute.name,
              path: '',
              parent: EmptyHomeRoute.name,
            )
          ],
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [EmptyAuthPage]
class EmptyAuthRoute extends PageRouteInfo<void> {
  const EmptyAuthRoute({List<PageRouteInfo>? children})
      : super(
          EmptyAuthRoute.name,
          path: '/auth',
          initialChildren: children,
        );

  static const String name = 'EmptyAuthRoute';
}

/// generated route for
/// [EmptyHomePage]
class EmptyHomeRoute extends PageRouteInfo<void> {
  const EmptyHomeRoute({List<PageRouteInfo>? children})
      : super(
          EmptyHomeRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'EmptyHomeRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: 'register',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}
