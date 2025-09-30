import 'package:hipstermeet/infrastructure/user/dtos/user_dto.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/core/error/exception.dart';

class UserStorage {
  static const _boxName = 'hipster_user_box';
  static const _userKey = 'hipster_user';

  late Box _userBox;

  UserStorage();

  Future<void> init() async {
    try {
      await Hive.initFlutter();
      Hive.registerAdapter(UserDtoAdapter());
      _userBox = await Hive.openBox(_boxName);
    } catch (e) {
      await Hive.deleteBoxFromDisk(_boxName);
      await init();
    }
  }

  List<UserDto>? fetchUserFromCache() {
    try {
      return _userBox.get(_userKey) as List<UserDto>;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> putUsers({required List<UserDto> users}) async {
    try {
      await _userBox.put(_userKey, users);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> deleteUsers() async {
    try {
      await _userBox.delete(_userKey);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> clear() async {
    try {
      await _userBox.flush();
      await _userBox.clear();
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
