import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_examples/part7/date_time/job.dart';

void main() {
  test('isNewJob returns true if job is posted within 7 days', () {
    final job = Job(postedAt: DateTime(2023, 1, 10));

    withClock(Clock.fixed(DateTime(2023, 1, 17)), () {
      expect(job.isNewJob, true);
    });
  });

  test('isNewJob returns false if job is posted more than 7 days ago', () {
    final job = Job(postedAt: DateTime(2023, 1, 10));

    withClock(Clock.fixed(DateTime(2023, 1, 18)), () {
      expect(job.isNewJob, false);
    });
  });
}
