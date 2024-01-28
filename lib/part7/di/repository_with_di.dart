import 'package:testing_examples/part7/di/storage.dart';

class Repository {
  final Storage storage;

  Repository({required this.storage});

  bool get isLoggedIn => storage.getAccessToken().isNotEmpty;
}