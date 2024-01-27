import 'package:isar/isar.dart';
import 'package:testing_examples/part4/model/job_data.dart';

class JobRepository {
  final Isar isar;

  JobRepository({required this.isar});

  Future<void> addJob(JobData jobData) async {
    await isar.writeTxn(() async {
      isar.jobDatas.put(jobData);
    });
  }

  Future<void> updateJob(JobData jobData) async {
    await isar.writeTxn(() async {
      isar.jobDatas.put(jobData);
    });
  }

  Future<void> deleteJob(int id) async {
    await isar.writeTxn(() async {
      isar.jobDatas.delete(id);
    });
  }

  Future<List<JobData>> getAllJobs() async {
    return await isar.jobDatas.where().findAll();
  }
}
