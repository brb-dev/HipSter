// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  @JsonKey(name: 'first_name', defaultValue: '')
  @HiveField(0, defaultValue: '')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name', defaultValue: '')
  @HiveField(1, defaultValue: '')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar', defaultValue: '')
  @HiveField(2, defaultValue: '')
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name', defaultValue: '')
      @HiveField(0, defaultValue: '')
      String firstName,
      @JsonKey(name: 'last_name', defaultValue: '')
      @HiveField(1, defaultValue: '')
      String lastName,
      @JsonKey(name: 'avatar', defaultValue: '')
      @HiveField(2, defaultValue: '')
      String avatar});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDtoImplCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(
          _$UserDtoImpl value, $Res Function(_$UserDtoImpl) then) =
      __$$UserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name', defaultValue: '')
      @HiveField(0, defaultValue: '')
      String firstName,
      @JsonKey(name: 'last_name', defaultValue: '')
      @HiveField(1, defaultValue: '')
      String lastName,
      @JsonKey(name: 'avatar', defaultValue: '')
      @HiveField(2, defaultValue: '')
      String avatar});
}

/// @nodoc
class __$$UserDtoImplCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$UserDtoImpl>
    implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(
      _$UserDtoImpl _value, $Res Function(_$UserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = null,
  }) {
    return _then(_$UserDtoImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'UserDtoAdapter')
class _$UserDtoImpl extends _UserDto {
  const _$UserDtoImpl(
      {@JsonKey(name: 'first_name', defaultValue: '')
      @HiveField(0, defaultValue: '')
      required this.firstName,
      @JsonKey(name: 'last_name', defaultValue: '')
      @HiveField(1, defaultValue: '')
      required this.lastName,
      @JsonKey(name: 'avatar', defaultValue: '')
      @HiveField(2, defaultValue: '')
      required this.avatar})
      : super._();

  factory _$UserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDtoImplFromJson(json);

  @override
  @JsonKey(name: 'first_name', defaultValue: '')
  @HiveField(0, defaultValue: '')
  final String firstName;
  @override
  @JsonKey(name: 'last_name', defaultValue: '')
  @HiveField(1, defaultValue: '')
  final String lastName;
  @override
  @JsonKey(name: 'avatar', defaultValue: '')
  @HiveField(2, defaultValue: '')
  final String avatar;

  @override
  String toString() {
    return 'UserDto(firstName: $firstName, lastName: $lastName, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDtoImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {@JsonKey(name: 'first_name', defaultValue: '')
      @HiveField(0, defaultValue: '')
      required final String firstName,
      @JsonKey(name: 'last_name', defaultValue: '')
      @HiveField(1, defaultValue: '')
      required final String lastName,
      @JsonKey(name: 'avatar', defaultValue: '')
      @HiveField(2, defaultValue: '')
      required final String avatar}) = _$UserDtoImpl;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$UserDtoImpl.fromJson;

  @override
  @JsonKey(name: 'first_name', defaultValue: '')
  @HiveField(0, defaultValue: '')
  String get firstName;
  @override
  @JsonKey(name: 'last_name', defaultValue: '')
  @HiveField(1, defaultValue: '')
  String get lastName;
  @override
  @JsonKey(name: 'avatar', defaultValue: '')
  @HiveField(2, defaultValue: '')
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
