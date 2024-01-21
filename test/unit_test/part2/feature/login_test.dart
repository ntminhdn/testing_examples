import 'package:flutter_test/flutter_test.dart';
import 'package:testing_examples/part2/feature/login.dart';

void main() {
  group('login', () {
    test('login should return false when the email is empty', () {
      // Arrange
      String? email;
      String password = 'password123';

      // Act
      bool result = login(email, password);

      // Assert
      expect(result, false);
    });

    test('login should return false when the password is empty', () {
      // Arrange
      String email = 'ntminh@gmail.vn';
      String? password;

      // Act
      bool result = login(email, password);

      // Assert
      expect(result, false);
    });

    test('login should return false when the email and password are empty', () {
      // Arrange
      String? email;
      String? password;

      // Act
      bool result = login(email, password);

      // Assert
      expect(result, false);
    });

    test('login should return true when the email and password are not empty',
        () {
      // Arrange
      String email = 'ntminh@gmail.vn';
      String password = 'password123';

      // Act
      bool result = login(email, password);

      // Assert
      expect(result, true);
    });
  });
}
