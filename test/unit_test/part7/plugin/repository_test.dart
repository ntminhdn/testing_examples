import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testing_examples/part7/plugin/firebase_firestore_service.dart';
import 'package:testing_examples/part7/plugin/repository.dart';

class MockFirebaseFirestoreService extends Mock implements FirebaseFirestoreService {}

void main() {
  late MockFirebaseFirestoreService mockFirebaseFirestoreService;
  late Repository repository;

  setUp(() {
    mockFirebaseFirestoreService = MockFirebaseFirestoreService();
    repository = Repository(firebaseFirestoreService: mockFirebaseFirestoreService);
  });

  test('getMyJob should return what the API returns', () async{
    // Stub
    when(() => mockFirebaseFirestoreService.getMyJob()).thenAnswer(
      (_) async => {'data': 'IT'},
    );

    // Act
    final result = await repository.getMyJob();

    // Assert
    expect(result, 'IT');
  });
}