import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_riverpod/features/authentication/presentation/screen/login_screen.dart';
import 'package:flutter_starter_riverpod/features/authentication/presentation/screen/register_screen.dart';
import 'package:flutter_starter_riverpod/features/authentication/presentation/screen/splash_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      name: 'splash',
      path: '/',
      initial: true,
    ),
    AutoRoute(
      page: LoginScreen,
      name: 'login',
      path: '/login',
      initial: true,
    ),
    AutoRoute(
      page: RegisterScreen,
      name: 'Register',
      path: '/register',
    )
  ],
)
class AppRouter extends _$AppRouter {}
