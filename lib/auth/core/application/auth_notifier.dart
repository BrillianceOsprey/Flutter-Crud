import 'package:crud_flutter/auth/core/infrastructure/user_authenticator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../domain/auth_failure.dart';
part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.inProgress() = _InProgress;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.error(
    AuthFailure failure,
  ) = _Error;
}

class AuthNotifier extends StateNotifier<AuthState> {
  final UserAuthenticator _authenticator;

  AuthNotifier(this._authenticator) : super(const AuthState.initial());

  /// check whether authenticated or unauthenticated and update the auth status.
  ///
  ///  set [AutheState] - [AuthState.authenticated()] or [AuthState.unauthenticated()]
  Future<void> checkAndUpdateAuthStatus() async {
    state = (await _authenticator.isSignedIn())
        ? const AuthState.authenticated()
        : const AuthState.unauthenticated();
  }

// Create user/ Sign up
  Future<void> createUser({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) async {
    state = const AuthState.inProgress();

    final failOrSuccess = await _authenticator.createUser(
      name: name,
      email: email,
      phone: phone,
      password: password,
    );

    state = failOrSuccess.fold(
      (l) => AuthState.error(l),
      (r) => const AuthState.authenticated(),
    );
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    state = const AuthState.inProgress();

    final failureOrSuccess = await _authenticator.signInWithEmailAnPassword(
      email: email,
      password: password,
    );

    state = failureOrSuccess.fold(
      (l) => AuthState.error(l),
      (r) => const AuthState.authenticated(),
    );
  }
}
