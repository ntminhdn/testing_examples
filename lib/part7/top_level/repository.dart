import 'package:testing_examples/part7/top_level/api_client_factory.dart';

class Repository {
  final AppServerApiClient appServerApiClient;
  final FirebaseApiClient firebaseApiClient;
  final FacebookApiClient facebookApiClient;

  Repository({
    required this.appServerApiClient,
    required this.firebaseApiClient,
    required this.facebookApiClient,
  });

  Future<String> getMyJob() async {
    final response = await appServerApiClient.request('/me/job');

    return response.toString();
  }

  Future<String> getAllJobs() async {
    final response = await appServerApiClient.request('/jobs');

    return response.toString();
  }
}
