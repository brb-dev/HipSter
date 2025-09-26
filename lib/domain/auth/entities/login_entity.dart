import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hipstermeet/domain/core/value/value_objects.dart';

part 'login_entity.freezed.dart';

@freezed
abstract class LoginEntity with _$LoginEntity {
  const LoginEntity._();

  const factory LoginEntity({
    required EmailAddress email,
    required Password password,
  }) = _LoginEntity;

  factory LoginEntity.empty() =>
      LoginEntity(email: EmailAddress(''), password: Password.enterLogin(''));
}
