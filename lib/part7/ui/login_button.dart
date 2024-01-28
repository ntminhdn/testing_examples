import 'package:flutter/material.dart';
import 'package:testing_examples/part7/ui/app_navigator.dart';

import 'login_view_model.dart';

class LoginButton extends StatelessWidget {
  LoginButton({super.key, required this.email, required this.password})
      : viewModel = LoginViewModel();

  final String email;
  final String password;
  final LoginViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final navigator = AppNavigator(context);
        viewModel.login(navigator, email, password);
      },
      child: const Text('Login'),
    );
  }
}
