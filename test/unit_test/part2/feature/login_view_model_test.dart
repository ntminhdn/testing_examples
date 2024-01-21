import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testing_examples/part2/feature/login_view_model.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  group('login', () {
    test('login should return false when the email and password are incorrect', () {
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

    test('login should return true when the email and password are correct', () {
      final mockSharedPreferences = MockSharedPreferences();
      final loginViewModel = LoginViewModel(sharedPreferences: mockSharedPreferences);
      String email = 'ntminh@gmail.com';
      String password = '123456';

      when(() => mockSharedPreferences.getString(email)).thenReturn('123456');
      final result = loginViewModel.login(email, password);
      expect(result, true);
    });
  });
}
