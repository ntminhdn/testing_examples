import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testing_examples/part3/feature/login_view_model.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  group('login', () {
    test('login should return false when the password are incorrect', () {
      // Arrange
      final mockSharedPreferences = MockSharedPreferences();
      final loginViewModel = LoginViewModel(sharedPreferences: mockSharedPreferences);
      String email = 'ntminh@gmail.com';
      String password = 'abc';

      // Stubbing
      when(() => mockSharedPreferences.getString(email)).thenReturn('123456');

      // Act
      final result = loginViewModel.login(email, password);

      // Assert
      expect(result, false);
    });

    test('login should return true when the password are correct', () {
      // Arrange
      final mockSharedPreferences = MockSharedPreferences();
      final loginViewModel = LoginViewModel(sharedPreferences: mockSharedPreferences);
      String email = 'ntminh@gmail.com';
      String password = '123456';

      // Stubbing
      when(() => mockSharedPreferences.getString(email)).thenReturn('123456');
      
      // Act
      final result = loginViewModel.login(email, password);

      // Assert
      expect(result, true);
    });
  });

  group('logout', () {
    test('logout should return true when the clear method returns true', () async {
      // Arrange
      final mockSharedPreferences = MockSharedPreferences();
      final loginViewModel = LoginViewModel(sharedPreferences: mockSharedPreferences);

      // Stubbing
      when(() => mockSharedPreferences.clear()).thenAnswer((_) => Future.value(true));

      // Act
      final result = await loginViewModel.logout();

      // Assert
      expect(result, true);
    });

    test('logout should throw an exception when the clear method returns false', () async {
      // Arrange
      final mockSharedPreferences = MockSharedPreferences();
      final loginViewModel = LoginViewModel(sharedPreferences: mockSharedPreferences);

      // Stubbing
      when(() => mockSharedPreferences.clear()).thenAnswer((_) => Future.value(false));

      // Act
      final Future<bool> Function() call = loginViewModel.logout;

      // Assert
      expect(call, throwsFlutterError);
    });

    test('logout should throw an exception when the clear method throws an exception', () async {
      // Arrange
      final mockSharedPreferences = MockSharedPreferences();
      final loginViewModel = LoginViewModel(sharedPreferences: mockSharedPreferences);

      // Stubbing
      when(() => mockSharedPreferences.clear()).thenThrow(Exception('Logout failed'));

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
