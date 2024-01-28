import 'package:flutter/material.dart';

class AppNavigator {
  final BuildContext context;

  AppNavigator(this.context);

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  } 

  void pushNamed(String name) {
    Navigator.of(context).pushNamed(name);
  }
}