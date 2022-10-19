import 'package:crud_flutter/auth/core/application/auth_notifier.dart';
import 'package:crud_flutter/auth/core/infrastructure/auth_interceptor.dart';
import 'package:crud_flutter/auth/core/infrastructure/credential_storage/credential_storage.dart';
import 'package:crud_flutter/auth/core/infrastructure/user_authenticator.dart';
import 'package:crud_flutter/env.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smf_core/smf_core.dart';

import '../../infrastructure/credential_storage/secure_credentail_storage.dart';

// flutter secure storage
final flutterSecureStorageProvider = Provider(
  (ref) => const FlutterSecureStorage(),
);

// for auth
final dioForAuthProvider = Provider(
  (ref) => Dio()
    ..options = BaseOptions(
      baseUrl: Env.uatBaseUrl,
      headers: {
        // ApiUtils.keyAccept: ApiUtils.applicationJson,
        "Accept": 'application/json',
        "apiKey": Env.apiKey,
      },
    ),
);
// credentail storage
final credentialStorageProvider = Provider<CredentailStorage>(
  (ref) => SecureCredentialStorage(
    ref.watch(flutterSecureStorageProvider),
  ),
);

// user authenticator/ remote service
final userAuthenticatorProvider = Provider(
  (ref) => UserAuthenticator(
    ref.watch(dioForAuthProvider),
    ref.watch(credentialStorageProvider),
  ),
);

// authentication notifier provider
final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(userAuthenticatorProvider),
  ),
);

// isSignIn(bool)
final isSignInProvider = Provider<bool>(
  (ref) => ref.watch(authNotifierProvider).maybeWhen(
        orElse: () => false,
        authenticated: () => true,
      ),
);

final authInterceptorProvider = Provider(
  (ref) => AuthInterceptor(
    ref.watch(userAuthenticatorProvider),
    ref.watch(authNotifierProvider.notifier),
    ref.watch(dioForAuthProvider),
  ),
);
