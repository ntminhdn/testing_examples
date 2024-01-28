import 'package:testing_examples/part7/plugin/firebase_firestore_service.dart';

class Repository {
  final FirebaseFirestoreService firebaseFirestoreService;

  Repository({required this.firebaseFirestoreService});

  Future<String> getMyJob() async {
    final response = await firebaseFirestoreService.getMyJob();

    return response?['data'] ?? '';
  }
}
