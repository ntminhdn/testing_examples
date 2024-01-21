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
    final success = await sharedPreferences.clear();
    
    if (!success) {
      throw Exception('Logout failed');
    }

    return success;
  }
}
