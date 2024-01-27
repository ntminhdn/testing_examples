import 'package:flutter/material.dart';

class LoginViewModel {
  final Navigator navigator;

  LoginViewModel({
    required this.navigator,
  });

  void login(BuildContext context, String email) {
    if (email.isNotEmpty) {
      navigator.push(context, 'home');
    }
  }
}

class Navigator {
  void push(BuildContext context, String name) {}
}
