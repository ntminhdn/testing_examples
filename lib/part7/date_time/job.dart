import 'package:clock/clock.dart';

class Job {
  final DateTime postedAt;

  Job({required this.postedAt});

  bool get isNewJob => clock.now().difference(postedAt).inDays <= 7;
}
