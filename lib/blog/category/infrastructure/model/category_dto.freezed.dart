// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) {
  return _CategoryDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryDto {
  @JsonKey(name: 'PostCategoryID', fromJson: stringFromJson)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'PostCategoryName', fromJson: stringFromJson)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'CreatedOn', fromJson: stringFromJson)
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'CreatedBy', fromJson: stringFromJson)
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'ModifiedOn', fromJson: stringFromJson)
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ModifiedBy', fromJson: stringFromJson)
  String get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'Active', fromJson: boolFromJson)
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDtoCopyWith<CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) then) =
      _$CategoryDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'PostCategoryID', fromJson: stringFromJson) String id,
      @JsonKey(name: 'PostCategoryName', fromJson: stringFromJson) String name,
      @JsonKey(name: 'CreatedOn', fromJson: stringFromJson) String createdAt,
      @JsonKey(name: 'CreatedBy', fromJson: stringFromJson) String createdBy,
      @JsonKey(name: 'ModifiedOn', fromJson: stringFromJson) String updatedAt,
      @JsonKey(name: 'ModifiedBy', fromJson: stringFromJson) String updatedBy,
      @JsonKey(name: 'Active', fromJson: boolFromJson) bool active});
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res> implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._value, this._then);

  final CategoryDto _value;
  // ignore: unused_field
  final $Res Function(CategoryDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoryDtoCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$$_CategoryDtoCopyWith(
          _$_CategoryDto value, $Res Function(_$_CategoryDto) then) =
      __$$_CategoryDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'PostCategoryID', fromJson: stringFromJson) String id,
      @JsonKey(name: 'PostCategoryName', fromJson: stringFromJson) String name,
      @JsonKey(name: 'CreatedOn', fromJson: stringFromJson) String createdAt,
      @JsonKey(name: 'CreatedBy', fromJson: stringFromJson) String createdBy,
      @JsonKey(name: 'ModifiedOn', fromJson: stringFromJson) String updatedAt,
      @JsonKey(name: 'ModifiedBy', fromJson: stringFromJson) String updatedBy,
      @JsonKey(name: 'Active', fromJson: boolFromJson) bool active});
}

/// @nodoc
class __$$_CategoryDtoCopyWithImpl<$Res> extends _$CategoryDtoCopyWithImpl<$Res>
    implements _$$_CategoryDtoCopyWith<$Res> {
  __$$_CategoryDtoCopyWithImpl(
      _$_CategoryDto _value, $Res Function(_$_CategoryDto) _then)
      : super(_value, (v) => _then(v as _$_CategoryDto));

  @override
  _$_CategoryDto get _value => super._value as _$_CategoryDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_CategoryDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryDto extends _CategoryDto {
  const _$_CategoryDto(
      {@JsonKey(name: 'PostCategoryID', fromJson: stringFromJson)
          required this.id,
      @JsonKey(name: 'PostCategoryName', fromJson: stringFromJson)
          required this.name,
      @JsonKey(name: 'CreatedOn', fromJson: stringFromJson)
          required this.createdAt,
      @JsonKey(name: 'CreatedBy', fromJson: stringFromJson)
          required this.createdBy,
      @JsonKey(name: 'ModifiedOn', fromJson: stringFromJson)
          required this.updatedAt,
      @JsonKey(name: 'ModifiedBy', fromJson: stringFromJson)
          required this.updatedBy,
      @JsonKey(name: 'Active', fromJson: boolFromJson)
          required this.active})
      : super._();

  factory _$_CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDtoFromJson(json);

  @override
  @JsonKey(name: 'PostCategoryID', fromJson: stringFromJson)
  final String id;
  @override
  @JsonKey(name: 'PostCategoryName', fromJson: stringFromJson)
  final String name;
  @override
  @JsonKey(name: 'CreatedOn', fromJson: stringFromJson)
  final String createdAt;
  @override
  @JsonKey(name: 'CreatedBy', fromJson: stringFromJson)
  final String createdBy;
  @override
  @JsonKey(name: 'ModifiedOn', fromJson: stringFromJson)
  final String updatedAt;
  @override
  @JsonKey(name: 'ModifiedBy', fromJson: stringFromJson)
  final String updatedBy;
  @override
  @JsonKey(name: 'Active', fromJson: boolFromJson)
  final bool active;

  @override
  String toString() {
    return 'CategoryDto(id: $id, name: $name, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.updatedBy, updatedBy) &&
            const DeepCollectionEquality().equals(other.active, active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(createdBy),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(updatedBy),
      const DeepCollectionEquality().hash(active));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryDtoCopyWith<_$_CategoryDto> get copyWith =>
      __$$_CategoryDtoCopyWithImpl<_$_CategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDtoToJson(
      this,
    );
  }
}

abstract class _CategoryDto extends CategoryDto {
  const factory _CategoryDto(
      {@JsonKey(name: 'PostCategoryID', fromJson: stringFromJson)
          required final String id,
      @JsonKey(name: 'PostCategoryName', fromJson: stringFromJson)
          required final String name,
      @JsonKey(name: 'CreatedOn', fromJson: stringFromJson)
          required final String createdAt,
      @JsonKey(name: 'CreatedBy', fromJson: stringFromJson)
          required final String createdBy,
      @JsonKey(name: 'ModifiedOn', fromJson: stringFromJson)
          required final String updatedAt,
      @JsonKey(name: 'ModifiedBy', fromJson: stringFromJson)
          required final String updatedBy,
      @JsonKey(name: 'Active', fromJson: boolFromJson)
          required final bool active}) = _$_CategoryDto;
  const _CategoryDto._() : super._();

  factory _CategoryDto.fromJson(Map<String, dynamic> json) =
      _$_CategoryDto.fromJson;

  @override
  @JsonKey(name: 'PostCategoryID', fromJson: stringFromJson)
  String get id;
  @override
  @JsonKey(name: 'PostCategoryName', fromJson: stringFromJson)
  String get name;
  @override
  @JsonKey(name: 'CreatedOn', fromJson: stringFromJson)
  String get createdAt;
  @override
  @JsonKey(name: 'CreatedBy', fromJson: stringFromJson)
  String get createdBy;
  @override
  @JsonKey(name: 'ModifiedOn', fromJson: stringFromJson)
  String get updatedAt;
  @override
  @JsonKey(name: 'ModifiedBy', fromJson: stringFromJson)
  String get updatedBy;
  @override
  @JsonKey(name: 'Active', fromJson: boolFromJson)
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDtoCopyWith<_$_CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
