import 'package:isar/isar.dart';

part 'new_job_data.g.dart';

@collection
class NewJobData {
  Id id = Isar.autoIncrement;

  late String title;
  late String desciption;
  late int postedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewJobData &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          desciption == other.desciption &&
          postedAt == other.postedAt;

  @override
  int get hashCode => title.hashCode ^ desciption.hashCode ^ postedAt.hashCode;
}
