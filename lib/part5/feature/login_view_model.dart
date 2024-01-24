import 'package:testing_examples/part5/navigator.dart';

class LoginViewModel {
  final Navigator navigator;

  LoginViewModel({
    required this.navigator,
  });

  void login(String email) {
    if (email.isNotEmpty) {
      navigator.push('home');
    }
  }
}
