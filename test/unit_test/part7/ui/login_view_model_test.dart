import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testing_examples/part7/ui/app_navigator.dart';
import 'package:testing_examples/part7/ui/login_view_model.dart';

class MockAppNavigator extends Mock implements AppNavigator {}

void main() {
  late MockAppNavigator mockAppNavigator;
  late LoginViewModel loginViewModel;

  setUp(() {
    mockAppNavigator = MockAppNavigator();
    loginViewModel = LoginViewModel();
  });

  group('login', () {
    test('navigator.push should not be called when the email is empty', () {
      // Arrange
      String email = '';
      String password = '123';

      // Act
      loginViewModel.login(mockAppNavigator, email, password);

      // Assert
      verify(() => mockAppNavigator.showSnackBar('Email and password are required')).called(1);
      verifyNever(() => mockAppNavigator.pushNamed(any()));
    });

    test('navigator.push should not be called when the password is empty', () {
      // Arrange
      String email = 'ntminh@gmail.com';
      String password = '';

      // Act
      loginViewModel.login(mockAppNavigator, email, password);

      // Assert
      verify(() => mockAppNavigator.showSnackBar('Email and password are required')).called(1);
      verifyNever(() => mockAppNavigator.pushNamed(any()));
    });

    test('navigator.push should be called once when the email and password are not empty', () {
      // Arrange
      String email = 'ntminh@gmail.com';
      String password = '123';

      // Act
      loginViewModel.login(mockAppNavigator, email, password);

      // Assert
      verifyNever(() => mockAppNavigator.showSnackBar(any()));
      verify(() => mockAppNavigator.pushNamed('home')).called(1);
    });
  });
}
