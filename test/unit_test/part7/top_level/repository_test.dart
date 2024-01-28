import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testing_examples/part7/top_level/api_client_factory.dart';
import 'package:testing_examples/part7/top_level/repository.dart';

class MockAppServerApiClient extends Mock implements AppServerApiClient {}

class MockFirebaseApiClient extends Mock implements FirebaseApiClient {}

class MockFacebookApiClient extends Mock implements FacebookApiClient {}

void main() {
  late MockAppServerApiClient mockAppServerApiClient;
  late MockFirebaseApiClient mockFirebaseApiClient;
  late MockFacebookApiClient mockFacebookApiClient;
  late Repository repository;

  setUp(() {
    mockAppServerApiClient = MockAppServerApiClient();
    mockFirebaseApiClient = MockFirebaseApiClient();
    mockFacebookApiClient = MockFacebookApiClient();
    repository = Repository(
      appServerApiClient: mockAppServerApiClient,
      firebaseApiClient: mockFirebaseApiClient,
      facebookApiClient: mockFacebookApiClient,
    );
  });

  test('getMyJob should return ', () async {
    // Stub
    when(() => mockAppServerApiClient.request('/me/job')).thenAnswer(
      (_) async => Response(
        requestOptions: RequestOptions(path: '/me/job'),
        data: 'IT',
      ),
    );

    // Act
    final jobs = await repository.getMyJob();

    // Assert
    expect(jobs, 'IT');
  });
}
