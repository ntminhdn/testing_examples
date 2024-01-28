import 'package:dio/dio.dart';

// BAD
final firebaseApiClient = Dio(BaseOptions(baseUrl: 'https://firebase.google.com'));
final facebookApiClient = Dio(BaseOptions(baseUrl: 'https://facebook.com'));
final appServerApiClient = Dio(BaseOptions(baseUrl: 'https://nals.vn'));

// GOOD
class BaseApiClient {
  final String baseUrl;
  final Dio dio;

  BaseApiClient(this.baseUrl) : dio = Dio(BaseOptions(baseUrl: baseUrl));

  Future<Response> request(String path) async {
    return dio.request(path);
  }
}

class AppServerApiClient extends BaseApiClient {
  AppServerApiClient() : super('https://nals.vn');
}

class FirebaseApiClient extends BaseApiClient {
  FirebaseApiClient() : super('https://firebase.google.com');
}

class FacebookApiClient extends BaseApiClient {
  FacebookApiClient() : super('https://facebook.com');
}
