import 'package:isar/isar.dart';
import 'package:testing_examples/part9/migration/new_job_data.dart';

part 'job_data.g.dart';

@collection
class JobData {
  Id id = Isar.autoIncrement;

  late String title;

  @override
  String toString() {
    return title;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JobData && runtimeType == other.runtimeType && title == other.title;

  @override
  int get hashCode => title.hashCode;

  NewJobData migrate() {
    return NewJobData()
      ..title = title
      ..desciption = ''
      ..postedAt = 0;
  }
}
