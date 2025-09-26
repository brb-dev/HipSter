// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) {
  return _LoginDto.fromJson(json);
}

/// @nodoc
mixin _$LoginDto {
// ignore: invalid_annotation_target
  @JsonKey(name: 'email', defaultValue: '')
  String get email =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'password', defaultValue: '')
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDtoCopyWith<LoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDtoCopyWith<$Res> {
  factory $LoginDtoCopyWith(LoginDto value, $Res Function(LoginDto) then) =
      _$LoginDtoCopyWithImpl<$Res, LoginDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'password', defaultValue: '') String password});
}

/// @nodoc
class _$LoginDtoCopyWithImpl<$Res, $Val extends LoginDto>
    implements $LoginDtoCopyWith<$Res> {
  _$LoginDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginDtoImplCopyWith<$Res>
    implements $LoginDtoCopyWith<$Res> {
  factory _$$LoginDtoImplCopyWith(
          _$LoginDtoImpl value, $Res Function(_$LoginDtoImpl) then) =
      __$$LoginDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'password', defaultValue: '') String password});
}

/// @nodoc
class __$$LoginDtoImplCopyWithImpl<$Res>
    extends _$LoginDtoCopyWithImpl<$Res, _$LoginDtoImpl>
    implements _$$LoginDtoImplCopyWith<$Res> {
  __$$LoginDtoImplCopyWithImpl(
      _$LoginDtoImpl _value, $Res Function(_$LoginDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginDtoImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDtoImpl extends _LoginDto {
  const _$LoginDtoImpl(
      {@JsonKey(name: 'email', defaultValue: '') required this.email,
      @JsonKey(name: 'password', defaultValue: '') required this.password})
      : super._();

  factory _$LoginDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDtoImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'email', defaultValue: '')
  final String email;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'password', defaultValue: '')
  final String password;

  @override
  String toString() {
    return 'LoginDto(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDtoImplCopyWith<_$LoginDtoImpl> get copyWith =>
      __$$LoginDtoImplCopyWithImpl<_$LoginDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDtoImplToJson(
      this,
    );
  }
}

abstract class _LoginDto extends LoginDto {
  const factory _LoginDto(
      {@JsonKey(name: 'email', defaultValue: '') required final String email,
      @JsonKey(name: 'password', defaultValue: '')
      required final String password}) = _$LoginDtoImpl;
  const _LoginDto._() : super._();

  factory _LoginDto.fromJson(Map<String, dynamic> json) =
      _$LoginDtoImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'email', defaultValue: '')
  String get email;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'password', defaultValue: '')
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginDtoImplCopyWith<_$LoginDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
