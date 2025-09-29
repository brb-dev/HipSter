import 'package:flutter_test/flutter_test.dart';
import 'package:hipstermeet/domain/auth/entities/login_entity.dart';
import 'package:hipstermeet/domain/core/value/value_objects.dart';

void main() {
  group('login_entity test', () {
    test('Empty Entity Check', () async {
      final loginEntity = LoginEntity.empty();
      expect(loginEntity.email, EmailAddress(''));
      expect(loginEntity.password, Password.enterLogin(''));
    });
  });
}
