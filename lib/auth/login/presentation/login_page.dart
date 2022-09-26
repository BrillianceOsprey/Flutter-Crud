import 'package:auto_route/auto_route.dart';
import 'package:crud_flutter/auth/core/presentation/login_register_switch.dart';
import 'package:crud_flutter/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smf_core/smf_core.dart';

import '../../core/application/auth_notifier.dart';
import '../../core/shared/shared/auth_provider.dart';
import 'widget/login_form.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
      ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      next.maybeWhen(orElse: () {}, authenticated: () {
        
      });
    });
    return HideKeyboard(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Login Page',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              const LoginForm(),
              const SizedBox(
                height: 30,
              ),
              LoginRegisterSwitch(
                text: "Don't have an account",
                actionText: 'Register',
                onTap: () {
                  context.router.push(const RegisterRoute());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
