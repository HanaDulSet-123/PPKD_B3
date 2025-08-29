import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  static const String loginKey = "Login";
  static const String tokenKey = "token";

  static Future<void> saveLogin() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(loginKey, true);
  }

  static Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(tokenKey, "Bearer $token"); // Tambahkan Bearer prefix
  }

  static Future<bool?> getLogin() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(loginKey);
  }

  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(tokenKey);
  }

  static Future<void> removeLogin() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(loginKey);
  }

  static Future<void> removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(tokenKey);
  }
}
