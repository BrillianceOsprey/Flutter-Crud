import 'package:crud_flutter/auth/core/application/auth_notifier.dart';
import 'package:crud_flutter/auth/core/shared/shared/auth_provider.dart';
import 'package:crud_flutter/core/providers/core_provider.dart';
import 'package:crud_flutter/core/providers/theme_provider.dart';
import 'package:crud_flutter/env.dart';
import 'package:crud_flutter/routes/app_router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smf_core/smf_core.dart';

final initializationProvider = FutureProvider((ref) async {
  // ignore: avoid_single_cascade_in_expression_statements
  ref.read(dioProvider)
    ..options = BaseOptions(
      baseUrl: Env.uatBaseUrl,
      headers: {
        ApiUtils.keyAccept: ApiUtils.applicationJson,
        "apikey": Env.apiKey,
      },
      validateStatus: (status) =>
          status != null && status >= 200 && status < 400,
    );
  // ..interceptors.add(ref.read(auth));
});

class AppWidget extends ConsumerWidget {
  AppWidget({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      next.maybeWhen(
          orElse: () {},
          authenticated: () {
            _appRouter.replaceAll(
              [const EmptyHomeRoute()],
            );
          },
          unauthenticated: () {
            _appRouter.replaceAll(
              [const EmptyAuthRoute()],
            );
          });
    });
    return MaterialApp.router(
      theme: ref.watch(lightThemeProvider),
      darkTheme: ref.watch(darkThemeProvider),
      themeMode: ref.watch(themeModeProvider),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
