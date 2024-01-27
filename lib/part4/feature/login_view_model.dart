import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewModel {
  final SharedPreferences sharedPreferences;

  LoginViewModel({
    required this.sharedPreferences,
  });

  
  final Map<String?, String?> _cache = {};

  // Expose this method for testing purposes to set values in _cache
  @visibleForTesting
  void putToCache(String email, String password) {
    _cache[email] = password;
  }

  bool login(String email, String password) {
    if (_cache.containsKey(email)) {
      return password == _cache[email];
    }

    final storedPassword = sharedPreferences.getString(email);

    putToCache(email, password);

    return password == storedPassword;
  }
}
