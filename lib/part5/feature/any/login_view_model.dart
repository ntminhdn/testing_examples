class LoginViewModel {
  final Navigator navigator;

  LoginViewModel({
    required this.navigator,
  });

  void login(String email) {
    if (email.isNotEmpty) {
      navigator.push(Screen('home'));
      navigator.push(Screen('profile'));
    }
  }
}

class Navigator {
  void push(Screen name) {}
}

class Screen {
  final String name;

  Screen(this.name);
}
