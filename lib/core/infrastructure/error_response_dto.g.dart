// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponseDto _$ErrorResponseDtoFromJson(Map<String, dynamic> json) =>
    ErrorResponseDto(
      code: stringFromJson(json['code']),
      message: stringFromJson(json['message']),
      description: stringFromJson(json['description']),
    );

Map<String, dynamic> _$ErrorResponseDtoToJson(ErrorResponseDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'description': instance.description,
    };
