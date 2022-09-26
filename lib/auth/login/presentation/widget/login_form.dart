import 'package:crud_flutter/auth/core/shared/shared/from_provider.dart';
import 'package:crud_flutter/core/presentation/button/auth_state_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/shared/shared/auth_provider.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends ConsumerState<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final passwordValidator = ref.watch(passwordValidatorProvider);
    final emailValidator = ref.watch(emailValidatorProvider);
    final isLoading = ref.watch(isInAuthProgressProvider);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: emailValidator,
            onEditingComplete: () {
              FocusScope.of(context).nextFocus();
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: emailController,
            decoration:
                const InputDecoration(label: Text('Email or phone number')),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            validator: passwordValidator,
            onEditingComplete: () {
              FocusScope.of(context).nextFocus();
            },
            controller: passwordController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(label: Text('Password')),
          ),
          const SizedBox(
            height: 20,
          ),
          AuthStateButton(
            text: 'Login',
            loading: isLoading,
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                if (isLoading) return; // true
                ref.read(authNotifierProvider.notifier).signIn(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                    );
              }
            },
          )
        ],
      ),
    );
  }
}
