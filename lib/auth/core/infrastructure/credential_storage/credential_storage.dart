import '../credentail.dart';

// Credential storage interface
abstract class CredentailStorage {
  Future<Credential?> read();
  Future<void> save(Credential credential);
  Future<void> clear();
}
