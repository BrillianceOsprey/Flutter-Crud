import 'package:crud_flutter/auth/core/application/auth_notifier.dart';
import 'package:crud_flutter/auth/core/infrastructure/user_authenticator.dart';
import 'package:dio/dio.dart';
import 'package:smf_core/smf_core.dart';

class AuthInterceptor extends Interceptor {
  final UserAuthenticator _authenticator;
  final AuthNotifier _authNotifier;
  final Dio _dio;
  static const String tag = 'AuthInterceptor';
  AuthInterceptor(this._authenticator, this._authNotifier, this._dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final credential = await _authenticator.getSignedInCredentail();
    final modifiedOptions = options
      ..headers.addAll(
        credential == null
            ? {}
            : {
                'Authorization': '${credential.type} ${credential.accessToken}',
              },
      );
    Logger.clap(tag, 'RequestBody: ${modifiedOptions.data}');
    Logger.clap(tag, 'QueryParameters: ${modifiedOptions.queryParameters}');
    handler.next(modifiedOptions);
  }

  // @override
  // void onError(DioError err, ErrorInterceptorHandler handler) {
  //   var errorResponse = err.response;

  //   if (errorResponse != null) {
  //     try {
  //       final customerError =
  //           ErrorRespons.fromJson(errorResponse.data);
  //     } catch (e) {
  //       Logger.e(tag, e);
  //     }
  //   }
  // }
}
