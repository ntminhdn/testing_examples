import 'package:flutter_test/flutter_test.dart';
import 'package:testing_examples/part2/util/utils.dart';

void main() {
  group('validateEmail', () {
    test('validateEmail should return true when the email is not empty', () {
      // Arrange
      String validEmail = 'test@example.com';

      // Act
      bool result = Validator.validateEmail(validEmail);

      // Assert
      expect(result, true);
    });

    test('validateEmail should return false when the email is empty', () {
      // Arrange
      String invalidEmail = '';

      // Act
      bool result = Validator.validateEmail(invalidEmail);

      // Assert
      expect(result, false);
    });
  });

  group('validatePassword', () {
    test('validatePassword should return true when the password is not empty',
        () {
      // Arrange
      String validPassword = 'password123';

      // Act
      bool result = Validator.validatePassword(validPassword);

      // Assert
      expect(result, true);
    });

    test('validatePassword should return false when the password is empty', () {
      // Arrange
      String invalidPassword = '';

      // Act
      bool result = Validator.validatePassword(invalidPassword);

      // Assert
      expect(result, false);
    });
  });
}
