import 'package:testing_examples/part7/ui/app_navigator.dart';

class LoginViewModel {
  void login(AppNavigator navigator, String email, String password) {
    if (email.isEmpty || password.isEmpty) {
      navigator.showSnackBar('Email and password are required');
    } else {
      navigator.pushNamed('home');
    }
  }
}
