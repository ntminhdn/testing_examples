import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testing_examples/part3/feature/login_view_model.dart';

class FakeSharedPreferences extends Fake implements SharedPreferences {
  @override
  String? getString(String key) {
    if (key == 'ntminh@gmail.com') {
      return '123456';
    }

    return null;
  }

  @override
  Future<bool> clear() {
    return Future.value(true);
  }
}

class SecondFakeSharedPreferences extends Fake implements SharedPreferences {
  @override
  String? getString(String key) {
    if (key == 'ntminh@gmail.com') {
      return '123456';
    }

    return null;
  }

  @override
  Future<bool> clear() {
    return Future.value(false);
  }
}

void main() {
  group('login', () {
    test('login should return false when the password are incorrect', () {
      // Arrange
      final fakeSharedPreferences = FakeSharedPreferences();
      final loginViewModel = LoginViewModel(sharedPreferences: fakeSharedPreferences);
      String email = 'ntminh@gmail.com';
      String password = 'abc';

      // Act
      final result = loginViewModel.login(email, password);

      // Assert
      expect(result, false);
    });

    test('login should return true when the password are correct', () {
      // Arrange
      final fakeSharedPreferences = FakeSharedPreferences();
      final loginViewModel = LoginViewModel(sharedPreferences: fakeSharedPreferences);
      String email = 'ntminh@gmail.com';
      String password = '123456';

      // Act
      final result = loginViewModel.login(email, password);

      // Assert
      expect(result, true);
    });
  });

  group('logout', () {
    test('logout should return true when the clear method returns true', () async {
      // Arrange
      final fakeSharedPreferences = FakeSharedPreferences();
      final loginViewModel = LoginViewModel(sharedPreferences: fakeSharedPreferences);

      // Act
      final result = await loginViewModel.logout();

      // Assert
      expect(result, true);
    });

    test('logout should throw an exception when the clear method returns false', () async {
      // Arrange
      final fakeSharedPreferences = SecondFakeSharedPreferences();
      final loginViewModel = LoginViewModel(sharedPreferences: fakeSharedPreferences);

      // Act
      final Future<bool> Function() call = loginViewModel.logout;

      // Assert
      expect(call, throwsFlutterError);
    });

    test('logout should throw an exception when the clear method throws an exception', () async {
      // Arrange
      final fakeSharedPreferences = SecondFakeSharedPreferences();
      final loginViewModel = LoginViewModel(sharedPreferences: fakeSharedPreferences);

      // Act
      final call = loginViewModel.logout;

      // Assert
      expect(
        call,
        throwsA(isA<FlutterError>().having((e) => e.message, 'error message', 'Logout failed')),
      );
    });
  });
}
