import 'package:crud_flutter/auth/core/shared/shared/auth_provider.dart';
import 'package:crud_flutter/core/presentation/button/auth_state_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/shared/shared/from_provider.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    init();
    super.initState();
  }

  Future<void> init() async {}

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final nameValidator = ref.watch(nameValidatorProvider);
        final emailValidator = ref.watch(emailValidatorProvider);
        final phoneValidator = ref.watch(phoneValidatorProvider);
        final passwordValidator = ref.watch(passwordValidatorProvider);
        final obscureText = ref.watch(obscureTextProvider);
        final isLoading = ref.watch(isInAuthProgressProvider);
        return Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                onEditingComplete: () {
                  FocusScope.of(context).nextFocus();
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: nameController,
                keyboardType: TextInputType.name,
                validator: nameValidator,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline),
                  label: Text('Name'),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onEditingComplete: () {
                  FocusScope.of(context).nextFocus();
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                validator: emailValidator,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  label: Text('Email'),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onEditingComplete: () {
                  FocusScope.of(context).nextFocus();
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: phoneController,
                keyboardType: TextInputType.phone,
                validator: phoneValidator,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone_outlined),
                  label: Text('Phone number'),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onEditingComplete: () {
                  FocusScope.of(context).nextFocus();
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: passwordController,
                obscureText: obscureText,
                keyboardType: TextInputType.visiblePassword,
                validator: passwordValidator,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_outline),
                  label: const Text('Password'),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      ref.read(obscureTextProvider.notifier).state =
                          !obscureText;
                    },
                    child: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              AuthStateButton(
                text: 'Create an account',
                loading: isLoading,
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    ref.read(authNotifierProvider.notifier).createUser(
                          name: nameController.text.trim(),
                          email: emailController.text.trim(),
                          phone: phoneController.text.trim(),
                          password: passwordController.text.trim(),
                        );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
