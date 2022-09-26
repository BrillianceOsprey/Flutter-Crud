import 'package:auto_route/auto_route.dart';
import 'package:crud_flutter/auth/core/presentation/empty_auth_page.dart';
import 'package:crud_flutter/auth/login/presentation/login_page.dart';
import 'package:crud_flutter/auth/register/presentation/register_page.dart';
import 'package:crud_flutter/home/presentation/home_page.dart';
import 'package:crud_flutter/splash/presentation/splash_page.dart';

import 'package:flutter/material.dart';

import '../home/presentation/empty_home_page.dart';
part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(
      page: EmptyAuthPage,
      path: '/auth',
      children: [
        AutoRoute(page: LoginPage, initial: true),
        AutoRoute(page: RegisterPage, path: 'register'),
      ],
    ),
    AutoRoute(
      page: EmptyHomePage,
      path: '/home',
      children: [
        AutoRoute(page: HomePage, initial: true),
      ],
    )
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
