import 'package:flutter_test/flutter_test.dart';
import 'package:testing_examples/part7/di/repository_without_di.dart';

void main() {
  late Repository repository;

  setUp(() {
    repository = Repository();
  });

  group('isLoggedIn', () {
    test('should return true when the access token is not empty', () {
      // Act
      bool isLoggedIn = repository.isLoggedIn;

      // Assert
      expect(isLoggedIn, true);
    });
  });
}