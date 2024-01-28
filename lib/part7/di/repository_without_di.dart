import 'package:testing_examples/part7/di/storage.dart';

class Repository {
  final storage = Storage();

  bool get isLoggedIn => storage.getAccessToken().isNotEmpty;
}
