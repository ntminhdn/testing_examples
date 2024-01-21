import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testing_examples/part4/feature/login_view_model.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  final mockSharedPreferences = MockSharedPreferences();
  final loginViewModel = LoginViewModel(sharedPreferences: mockSharedPreferences);

  setUp(() {
    loginViewModel.clearCache();
  });

  group('login', () {
    test('login should return true when the cache contains the password input', () {
      // Arrange
      String email = 'ntminh@gmail.com';
      String password = 'abc';
      loginViewModel.putToCache(email, 'abc');

      // Stubbing
      when(() => mockSharedPreferences.getString(email)).thenReturn('123456');

      // Act
      final result = loginViewModel.login(email, password);

      // Assert
      expect(result, true);
    });

    test(
        'login should return false when the cache does not contain the password input and the password is incorrect',
        () {
      // Arrange
      String email = 'ntminh@gmail.com';
      String password = 'abc';

      // Stubbing
      when(() => mockSharedPreferences.getString(email)).thenReturn('123456');

      // Act
      final result = loginViewModel.login(email, password);

      // Assert
      expect(result, false);
    });
  });
}
