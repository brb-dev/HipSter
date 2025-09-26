import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hipstermeet/domain/auth/entities/login_entity.dart';
import 'package:hipstermeet/domain/user/entities/user_entity.dart';
import '../../../domain/core/value/value_objects.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'first_name', defaultValue: '') required String firstName,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'last_name', defaultValue: '') required String lastName,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'avatar', defaultValue: '') required String avatar,
  }) = _UserDto;

  UserEntity toDomain() {
    return UserEntity(firstName: firstName, lastName: lastName, avatar: avatar);
  }

  factory UserDto.fromDomain(UserEntity entity) {
    return UserDto(
      firstName: entity.firstName,
      lastName: entity.lastName,
      avatar: entity.avatar,
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
