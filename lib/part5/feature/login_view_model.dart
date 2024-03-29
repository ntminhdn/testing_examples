

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

class Navigator {
  void push(String name) {}
}
