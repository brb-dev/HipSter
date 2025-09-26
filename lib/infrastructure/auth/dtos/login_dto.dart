import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hipstermeet/domain/auth/entities/login_entity.dart';
import '../../../domain/core/value/value_objects.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
class LoginDto with _$LoginDto {
  const LoginDto._();

  const factory LoginDto({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'email', defaultValue: '') required String email,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'password', defaultValue: '') required String password,
  }) = _LoginDto;

  LoginEntity toDomain() {
    return LoginEntity(
      email: EmailAddress(email),
      password: Password.enterLogin(password),
    );
  }

  factory LoginDto.fromDomain(LoginEntity entity) {
    return LoginDto(
      email: entity.email.getOrCrash(),
      password: entity.password.getOrCrash(),
    );
  }

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);
}
