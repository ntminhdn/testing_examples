import 'package:flutter_test/flutter_test.dart';
import 'package:testing_examples/part2/ext/extension.dart';

void main() {
group('isNullOrEmpty', () {
  test('isNullOrEmpty should return true when the string is null', () {
    // Arrange
    String? nullString;

    // Act
    bool result = nullString.isNullOrEmpty;

    // Assert
    expect(result, true);
  });

  test('isNullOrEmpty should return true when the string is empty', () {
    // Arrange
    String emptyString = '';

    // Act
    bool result = emptyString.isNullOrEmpty;

    // Assert
    expect(result, true);
  });

  test('isNullOrEmpty should return false when the string is not empty', () {
    // Arrange
    String notEmptyString = 'test';

    // Act
    bool result = notEmptyString.isNullOrEmpty;

    // Assert
    expect(result, false);
  });
});
}