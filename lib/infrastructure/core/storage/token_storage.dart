import 'dart:convert';

import 'package:hipstermeet/infrastructure/core/storage/secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/core/error/exception.dart';
import '../../auth/dtos/token_dto.dart';

class TokenStorage {
  static const _boxName = 'hipster_token_box';
  static const _tokenKey = 'hipster_token';
  static const _secureKey = 'hipster_auth_secure';
  late Box _encryptedBox;
  SecureStorage secureStorage;

  TokenStorage({required this.secureStorage});

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(TokenDtoAdapter());
    // https://docs.hivedb.dev/#/advanced/encrypted_box
    final encryprionKey = await secureStorage.read(key: _secureKey);
    if (encryprionKey.isEmpty) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(key: _secureKey, value: base64UrlEncode(key));
    }
    final key = await secureStorage.read(key: _secureKey);
    final encryptionKey = base64Url.decode(key);
    _encryptedBox = await Hive.openBox(
      _boxName,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }

  Future<TokenDto> get() async {
    try {
      return await _encryptedBox.get(
        _tokenKey,
        defaultValue: TokenDto(token: ''),
      );
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future set(TokenDto tokenDto) async {
    try {
      await _encryptedBox.put(_tokenKey, tokenDto);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future clear() async {
    try {
      await _encryptedBox.clear();
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
