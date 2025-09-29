import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hipstermeet/domain/user/entities/user_entity.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    @JsonKey(name: 'first_name', defaultValue: '') required String firstName,
    @JsonKey(name: 'last_name', defaultValue: '') required String lastName,
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
