// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseDto _$ResponseDtoFromJson(Map<String, dynamic> json) => ResponseDto(
      code: stringFromJson(json['code']),
      message: stringFromJson(json['message']),
      description: stringFromJson(json['description']),
      data: stringFromJson(json['data']),
    );

Map<String, dynamic> _$ResponseDtoToJson(ResponseDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'description': instance.description,
      'data': instance.data,
    };
