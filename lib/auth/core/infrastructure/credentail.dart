// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'credentail.g.dart';

@JsonSerializable()
class Credential {
  @JsonKey(name: 'token')
  final String accessToken;
  @JsonKey(name: 'type')
  final String type;

  Credential({required this.accessToken, required this.type});
  factory Credential.fromJson(Map<String, dynamic> json) =>
      _$CredentialFromJson(json);

  Map<String, dynamic> toJson() => _$CredentialToJson(this);

  Credential copyWith({
    String? token,
    String? type,
  }) {
    return Credential(
      accessToken: token ?? accessToken,
      type: type ?? this.type,
    );
  }

  @override
  String toString() => 'Credential(token: $accessToken)';

  @override
  // ignore: hash_and_equals
  bool operator ==(covariant Credential other) {
    if (identical(this, other)) return true;

    return other.accessToken == accessToken && other.type == type;
  }

  @override
  // ignore: override_on_non_overriding_member
  int get hashCode => accessToken.hashCode ^ type.hashCode;
}
