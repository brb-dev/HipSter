import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value/value_objects.dart';

part 'auth_entity.freezed.dart';

@freezed
class AuthEntity with _$AuthEntity {
  const AuthEntity._();

  const factory AuthEntity({required Token token}) = _AuthEntity;

  factory AuthEntity.empty() => AuthEntity(token: Token(''));
}
