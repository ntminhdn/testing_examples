import 'package:testing_examples/part4/model/job_data.dart';
import 'package:testing_examples/part6/feature/fake/job_repository.dart';

class JobViewModel {
  JobRepository jobRepository;

  JobViewModel({required this.jobRepository});

  final Map<int, JobData> jobMap = {};

  Future<void> addJob({
    required JobData jobData,
  }) async {
    await jobRepository.addJob(jobData);
  }

  Future<void> updateJob({
    required JobData jobData,
  }) async {
    await jobRepository.updateJob(jobData);
  }

  Future<void> deleteJob(int id) async {
    await jobRepository.deleteJob(id);
  }

  Future<void> getAllJobs() async {
    final jobs = await jobRepository.getAllJobs();

    jobMap.clear();
    for (var post in jobs) {
      jobMap[post.id] = post;
    }
  }
}
