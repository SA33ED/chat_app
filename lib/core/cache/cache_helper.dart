import 'package:shared_preferences/shared_preferences.dart';

class AppCache {
  static late SharedPreferences sharedPreferences;

//Function To Initial Shared Preferences
  init() async {
    
    sharedPreferences = await SharedPreferences.getInstance();
  }

//Function To Set Data In Shared Preferences
  Future<bool> setData({required String key, required dynamic value}) async {
    if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is int) {
      return await sharedPreferences.setInt(key, value);
    } else {
      return await sharedPreferences.setDouble(key, value);
    }
  }

//Function To Get String Form Shared Preferences
  String? getDataString({required String key}) {
    return sharedPreferences.getString(key);
  }

//Function To Get Data already saved in Shared Preferences
  dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

//Remove data usong specific key
  Future<bool> removeData({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  Future<bool> containsKey({required String key}) async {
    return sharedPreferences.containsKey(key);
  }

//clear all data in the shared Prefernces
  Future<bool> clearData() async {
    return await sharedPreferences.clear();
  }
}
