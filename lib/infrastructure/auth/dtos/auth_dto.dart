import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/entities/auth_entity.dart';
import '../../../domain/core/value/value_objects.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
abstract class AuthDto with _$AuthDto {
  const AuthDto._();

  const factory AuthDto({
    @JsonKey(name: 'token', defaultValue: '') required String token,
  }) = _AuthDto;

  AuthEntity toDomain() {
    return AuthEntity(token: Token(token));
  }

  factory AuthDto.fromDomain(AuthEntity authEntity) {
    return AuthDto(token: authEntity.token.getOrCrash());
  }

  factory AuthDto.fromJson(Map<String, dynamic> json) =>
      _$AuthDtoFromJson(json);
}
