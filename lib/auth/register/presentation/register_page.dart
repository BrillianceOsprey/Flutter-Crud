import 'package:auto_route/auto_route.dart';
import 'package:crud_flutter/auth/register/presentation/widget/register_form.dart';
import 'package:flutter/material.dart';
import 'package:smf_core/smf_core.dart';

import '../../../core/shared/config/app_strings.dart';
import '../../core/presentation/login_register_switch.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return HideKeyboard(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              const SizedBox(height: 64),
              Text(
                'Register Page',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 30),
              Text(
                AppStrings.loremIpsum,
                // textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 30),
              const RegisterForm(),
              const SizedBox(height: 30),
              LoginRegisterSwitch(
                text: 'Already have and account?',
                actionText: 'Login',
                onTap: () {
                  context.router.pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
