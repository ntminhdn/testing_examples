import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testing_examples/part7/di/repository_with_di.dart';
import 'package:testing_examples/part7/di/storage.dart';

class MockStorage extends Mock implements Storage {}

void main() {
  late MockStorage mockStorage;
  late Repository repository;

  setUp(() {
    mockStorage = MockStorage();
    repository = Repository(storage: mockStorage);
  });

  group('isLoggedIn', () {
    test('should return true when the access token is not empty', () {
      // Arrange
      when(() => mockStorage.getAccessToken()).thenReturn('access_token');

      // Act
      bool isLoggedIn = repository.isLoggedIn;

      // Assert
      expect(isLoggedIn, true);
    });

    test('should return false when the access token is empty', () {
      // Arrange
      when(() => mockStorage.getAccessToken()).thenReturn('');

      // Act
      bool isLoggedIn = repository.isLoggedIn;

      // Assert
      expect(isLoggedIn, false);
    });
  });
}