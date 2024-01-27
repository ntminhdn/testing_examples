import 'package:flutter/material.dart' hide Navigator;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testing_examples/part6/feature/login_view_model.dart';

class MockNavigator extends Mock implements Navigator {}

class FakeBuildContext extends Fake implements BuildContext {}

void main() {
  late MockNavigator mockNavigator;
  late LoginViewModel loginViewModel;

  setUpAll(() {
    registerFallbackValue(FakeBuildContext());
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
      loginViewModel.login(FakeBuildContext(), email);

      // Assert
      verifyNever(() => mockNavigator.push(any(), any()));
    });

    test('navigator.push should be called once when the email is not empty', () {
      // Arrange
      String email = 'ntminh@gmail.com';

      // Act
      loginViewModel.login(FakeBuildContext(), email);

      // Assert
      verify(() => mockNavigator.push(any(), any())).called(1);
    });
  });
}
