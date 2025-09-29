import 'package:flutter_test/flutter_test.dart';
import 'package:hipstermeet/domain/auth/entities/auth_entity.dart';
import 'package:hipstermeet/domain/core/value/value_objects.dart';

void main() {
  group('auth_entity test', () {
    test('Empty Entity Check', () async {
      final authEntity = AuthEntity.empty();
      expect(authEntity.token, Token(''));
    });
  });
}
