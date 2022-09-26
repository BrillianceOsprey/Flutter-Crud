import 'dart:convert';

import 'package:crud_flutter/auth/core/infrastructure/credentail.dart';
import 'package:crud_flutter/auth/core/infrastructure/credential_storage/credential_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:smf_core/smf_core.dart';

class SecureCredentialStorage implements CredentailStorage {
  final FlutterSecureStorage _flutterSecureStorage;

  SecureCredentialStorage(this._flutterSecureStorage);

  static const String tag = 'SecureCredentialStorage';
  static const String _key = 'auth_credential';
  Credential? _cachedCredentail;

  @override
  Future<Credential?> read() async {
    if (_cachedCredentail != null) {
      return _cachedCredentail;
    }
// if null
    final result = await _flutterSecureStorage.read(key: _key);
    if (result == null) {
      return null;
    }
// if has data
    final json = jsonDecode(result);

    try {
      return _cachedCredentail = Credential.fromJson(json);
    } on FormatException catch (e) {
      Logger.e(tag, 'FormatException: ${e.message}');
    }

    throw UnimplementedError();
  }

  @override
  Future<void> save(Credential credential) {
    _cachedCredentail = credential;
    return _flutterSecureStorage.write(
      key: _key,
      value: jsonEncode(
        credential.toJson(),
      ),
    );
  }

  @override
  Future<void> clear() async {
    _cachedCredentail = null;
    return _flutterSecureStorage.delete(key: _key);
  }
}
