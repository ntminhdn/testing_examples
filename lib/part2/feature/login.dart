import 'package:testing_examples/part2/ext/extension.dart';
import 'package:testing_examples/part2/util/utils.dart';

bool login(String? email, String? password) {
  if (email.isNullOrEmpty || password.isNullOrEmpty) {
    return false;
  }

  return Validator.validateEmail(email!) && Validator.validatePassword(password!);
}
