import 'package:hive/hive.dart';

import '../../../domain/core/value/value_objects.dart';

part 'token_dto.g.dart';

@HiveType(typeId: 0)
class TokenDto {
  TokenDto({required this.token});

  @HiveField(0)
  final String token;

  factory TokenDto.fromDomain(Token tokenEntity) {
    return TokenDto(token: tokenEntity.getOrCrash());
  }

  Token toDomain() {
    return Token(token);
  }
}
