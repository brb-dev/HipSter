import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hipstermeet/infrastructure/auth/dtos/auth_dto.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late dynamic data;
  group('Test Auth DTO', () {
    setUp(() async {
      data = {'token': 'abcdxyz'};
    });

    test('Check toDomain', () async {
      final auth = AuthDto.fromJson(data).toDomain();
      expect(auth.token.isValid(), true);
    });

    test('Check fromDomain', () async {
      final auth = AuthDto.fromJson(data).toDomain();
      final authDto = AuthDto.fromDomain(auth);
      expect(authDto.token.isNotEmpty, true);
    });

    test('Check toJson', () async {
      final auth = AuthDto.fromJson(data).toDomain();
      final jsonMap = AuthDto.fromDomain(auth).toJson();
      expect(jsonMap['token'].toString().isNotEmpty, true);
    });
  });
}
