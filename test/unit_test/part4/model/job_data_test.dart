import 'package:flutter_test/flutter_test.dart';
import 'package:testing_examples/part4/model/job_data.dart';
import 'package:testing_examples/part9/migration/new_job_data.dart';

void main() {
  group('migrate', () {
    test('[v1] data should not be changed after migrating', () {
      final oldJobData = JobData()..title = 'IT';

      final newJobData = oldJobData.migrate();

      expect(newJobData.title, 'IT');
      expect(newJobData.desciption, '');
    });

    test('[v2] data should not be changed after migrating', () {
      final oldJobData = JobData()..title = 'IT';

      final newJobData = oldJobData.migrate();

      expect(
        newJobData,
        NewJobData()
          ..title = 'IT'
          ..desciption = ''
          ..postedAt = 0,
      );
    });
  });
}
