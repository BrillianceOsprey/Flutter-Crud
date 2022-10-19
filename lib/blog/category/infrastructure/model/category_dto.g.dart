// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryDto _$$_CategoryDtoFromJson(Map<String, dynamic> json) =>
    _$_CategoryDto(
      id: stringFromJson(json['PostCategoryID']),
      name: stringFromJson(json['PostCategoryName']),
      createdAt: stringFromJson(json['CreatedOn']),
      createdBy: stringFromJson(json['CreatedBy']),
      updatedAt: stringFromJson(json['ModifiedOn']),
      updatedBy: stringFromJson(json['ModifiedBy']),
      active: boolFromJson(json['Active']),
    );

Map<String, dynamic> _$$_CategoryDtoToJson(_$_CategoryDto instance) =>
    <String, dynamic>{
      'PostCategoryID': instance.id,
      'PostCategoryName': instance.name,
      'CreatedOn': instance.createdAt,
      'CreatedBy': instance.createdBy,
      'ModifiedOn': instance.updatedAt,
      'ModifiedBy': instance.updatedBy,
      'Active': instance.active,
    };
