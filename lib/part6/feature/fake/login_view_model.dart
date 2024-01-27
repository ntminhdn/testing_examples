import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewModel {
  final SharedPreferences sharedPreferences;

  LoginViewModel({
    required this.sharedPreferences,
  });

  bool login(String email, String password) {
    final cachedPassword = sharedPreferences.getString(email);

    return password == cachedPassword;
  }

  Future<bool> logout() async {
    bool success = false;
    try {
      success = await sharedPreferences.clear();
    } catch (e) {
      success = false;
    }
    
    if (!success) {
      throw FlutterError('Logout failed');
    }

    return success;
  }
}
