// ignore_for_file: unused_field

import 'package:crud_flutter/auth/core/domain/auth_failure.dart';
import 'package:crud_flutter/auth/core/infrastructure/credentail.dart';
import 'package:crud_flutter/auth/core/infrastructure/credential_storage/credential_storage.dart';
import 'package:crud_flutter/core/infrastructure/response_dto.dart';
import 'package:crud_flutter/core/shared/config/app_consts.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:smf_core/smf_core.dart';

class UserAuthenticator {
  final Dio _dio;
  final CredentailStorage _credentialStorage;

  UserAuthenticator(this._dio, this._credentialStorage);
  static const String tag = 'UserAuthenticator';

  /// Get signed in credential from storage.
  ///
  /// Return [null] if there is no credential data in storage.
  Future<Credential?> getSignedInCredentail() async {
    try {
      final storageCredentail = await _credentialStorage.read();
      if (storageCredentail != null) {
        // refresh token
      }
      return storageCredentail;
    } on PlatformException catch (e) {
      return null;
    }
  }

  /// Check whether the use is signed in or not.
  ///
  /// return [true] if signed in, return [false] if not.
  Future<bool> isSignedIn() =>
      getSignedInCredentail().then((credentail) => credentail != null);

  /// Create User.
  /// If user creation is successfully, save [Credential] data
  /// to [CredentialStorage].
  ///
  /// Return [AuthFailure] on the left and [Unit] on the right.

  Future<Either<AuthFailure, Unit>> createUser({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) async {
    try {
      final payload = {
        "Name": name,
        "Email": email,
        "PhoneNumber": phone,
        "Password": password,
      };
      Logger.d('CreateUser', payload);
      final response = await _dio.post(
        AppConsts.apiEndpoints.userCreate,
        data: payload,
      );
      Logger.d('CreateUser response.statusCode', response.statusCode);
      if (response.statusCode == AppConsts.status.created ||
          response.statusCode == AppConsts.status.ok) {
        Logger.d('CreateUser response', response.statusCode);
        final jsonData = responseData(response);
        Logger.d('CreateUser Jsondata', jsonData);
        final result = ResponseDto.fromJson(jsonData);
        final credential = Credential(accessToken: result.data, type: 'Bearer');
        await _credentialStorage.save(credential);
        return right(unit);
      } else {
        return left(
          AuthFailure.server(
              '${response.statusCode}:${response.statusMessage}'),
        );
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return left(
          AuthFailure.server(ApiUtils.messages.connectionProblem),
        );
      } else if (e.error != null) {
        print('hello 1');
        Logger.e(tag, e.error);

        if (e.response == null) {
          return left(
            AuthFailure.server(ApiUtils.messages.unknownError),
          );
        } else {
          return left(
            AuthFailure.server('${e.error}: ${e.response?.statusMessage}'),
          );
        }
      } else {
        Logger.e(tag, e);
        return left(
          AuthFailure.server(ApiUtils.messages.unknownError),
        );
      }
    } on PlatformException catch (e) {
      Logger.e(tag, 'SignInWithEmailAndPasswordError: $e');
      return left(
        const AuthFailure.storage(),
      );
    }
  }

  /// Sign in user.
  /// If the user signed in successfully, save [Credential] data
  /// to [CredentialStorage].
  ///
  /// Return [AuthFailure] on the left and [Unit] on the right.
  Future<Either<AuthFailure, Unit>> signInWithEmailAnPassword({
    required String email,
    required String password,
  }) async {
    try {
      final Map<String, dynamic> payload = {
        "EmailOrPhone": email,
        "Password": password,
      };
      Logger.i('PayLoad UserAuthenticator', payload);

      final response = await _dio.post(
        AppConsts.apiEndpoints.userLogin,
        data: payload,
        onSendProgress: (count, total) {
          Logger.d(tag, 'SendProgress: $count, $total');
        },
        onReceiveProgress: (count, total) {
          Logger.d(tag, 'ReceiveProgress: $count, $total');
        },
      );

      if (response.statusCode == AppConsts.status.ok) {
        final jsonData = responseData(response);
        final result = ResponseDto.fromJson(jsonData);
        final credential = Credential(accessToken: result.data, type: 'Bearer');
        await _credentialStorage.save(credential);
        return right(unit);
      } else {
        return left(
          AuthFailure.server(
            '${response.statusCode}: ${response.statusMessage}',
          ),
        );
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return left(
          AuthFailure.server(ApiUtils.messages.connectionProblem),
        );
      } else if (e.error != null) {
        Logger.e(tag, e.error);
        if (e.response == null) {
          return left(AuthFailure.server(ApiUtils.messages.unknownError));
        } else {
          return left(
            AuthFailure.server(
              '${e.error}: ${e.response?.statusMessage}',
            ),
          );
        }
      } else {
        Logger.e(tag, e);
        return left(AuthFailure.server(ApiUtils.messages.unknownError));
      }
    } on PlatformException catch (e) {
      Logger.e(tag, 'SignInWithEmailAndPasswordError: $e');
      return left(const AuthFailure.storage());
    }
  }
}
