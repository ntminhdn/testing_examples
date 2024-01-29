import 'package:testing_examples/part8/fetch_remote_config/model.dart';

class Repository {
  Future<RemoteConfig> fetchRemoteConfig() async => const RemoteConfig();

  String get lastRecommendTime => '';

  String get lastShowImportantNotice => '';

  bool get isFirstLogin => false;

  String get currentAppVersion => '1.1.0';
}
