import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheHelper {
  static late SharedPreferences pref;

  static Future<void> initCache() async {
    pref = await SharedPreferences.getInstance();
  }

  static Future<bool> saveData(String key, dynamic value) async {
    if (value is String) {
      return await pref.setString(key, value);
    } else if (value is int) {
      return pref.setInt(key, value);
    } else if (value is bool) {
      return await pref.setBool(key, value);
    } else if (value is double) {
      return await pref.setDouble(key, value);
    } else {
      return await pref.setString(key, value.toString());
    }
  }

  static dynamic getData(String key) {
    return pref.get(key);
  }

  static Future<bool> removeData(String key) async {
    return await pref.remove(key);
  }
}

class SecureStorageHelper {
  static const _secureStorage = FlutterSecureStorage();

  // Save data to secure storage
  static Future<void> saveData(String key, dynamic value) async {
    if (value is String) {
      await _secureStorage.write(key: key, value: value);
    } else if (value is int || value is bool || value is double) {
      await _secureStorage.write(key: key, value: value.toString());
    } else {
      throw Exception("Unsupported type");
    }
  }

  // Retrieve data from secure storage
  static Future<String?> getData(String key) async {
    return await _secureStorage.read(key: key);
  }

  // Remove data from secure storage
  static Future<void> removeData(String key) async {
    await _secureStorage.delete(key: key);
  }

  // Clear all data from secure storage
  static Future<void> clearAllData() async {
    await _secureStorage.deleteAll();
  }
}
