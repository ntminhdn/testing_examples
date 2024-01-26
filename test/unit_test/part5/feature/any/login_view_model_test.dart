import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testing_examples/part5/feature/any/login_view_model.dart';

class MockNavigator extends Mock implements Navigator {}

void main() {
  late MockNavigator mockNavigator;
  late LoginViewModel loginViewModel;

  setUpAll(() {
    registerFallbackValue(Screen('login'));
  });

  setUp(() {
    mockNavigator = MockNavigator();
    loginViewModel = LoginViewModel(navigator: mockNavigator);
  });

  group('login', () {
    test('navigator.push should not be called when the email is empty', () {
      // Arrange
      String email = '';

      // Act
      loginViewModel.login(email);

      // Assert
      verifyNever(() => mockNavigator.push(any()));
    });

    test('navigator.push should be called once when the email is not empty', () {
      // Arrange
      String email = 'ntminh@gmail.com';

      // Act
      loginViewModel.login(email);

      // Assert
      verify(() => mockNavigator.push(any())).called(2);
    });
  });
}
