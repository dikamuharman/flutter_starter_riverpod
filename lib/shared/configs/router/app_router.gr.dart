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
    Splash.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    Login.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    Register.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          Splash.name,
          path: '/',
        ),
        RouteConfig(
          Login.name,
          path: '/login',
        ),
        RouteConfig(
          Register.name,
          path: '/register',
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class Splash extends PageRouteInfo<void> {
  const Splash()
      : super(
          Splash.name,
          path: '/',
        );

  static const String name = 'Splash';
}

/// generated route for
/// [LoginScreen]
class Login extends PageRouteInfo<void> {
  const Login()
      : super(
          Login.name,
          path: '/login',
        );

  static const String name = 'Login';
}

/// generated route for
/// [RegisterScreen]
class Register extends PageRouteInfo<void> {
  const Register()
      : super(
          Register.name,
          path: '/register',
        );

  static const String name = 'Register';
}
