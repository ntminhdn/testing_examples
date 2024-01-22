import 'package:isar/isar.dart';

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
}
