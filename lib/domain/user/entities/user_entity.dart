import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value/value_objects.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const UserEntity._();

  const factory UserEntity({
    required String firstName,
    required String lastName,
    required String avatar,
  }) = _UserEntity;

  factory UserEntity.empty() =>
      UserEntity(firstName: '', lastName: '', avatar: '');
}
