import 'package:flutter_test/flutter_test.dart';
import 'package:testing_examples/part4/model/job_data.dart';
import 'package:testing_examples/part6/feature/fake/job_repository.dart';
import 'package:testing_examples/part6/feature/fake/job_view_model.dart';

class FakeJobRepository extends Fake implements JobRepository {
  // Giả sử ban đầu trong DB đã có 3 job
  final jobDataInDb = [
    JobData()..id = 1..title = 'Job 1',
    JobData()..id = 2..title = 'Job 2',
    JobData()..id = 3..title = 'Job 3',
  ];

  @override 
  Future<void> addJob(JobData jobData) async {
    jobDataInDb.add(jobData);
  }

  @override
  Future<void> updateJob(JobData jobData) async {
    jobDataInDb.firstWhere((element) => element.id == jobData.id).title = jobData.title;
  }

  @override
  Future<void> deleteJob(int id) async {
    jobDataInDb.removeWhere((element) => element.id == id);
  }

  @override
  Future<List<JobData>> getAllJobs() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 1000));
    return jobDataInDb;
  }
}

void main() {
  late FakeJobRepository fakeJobRepository;
  late JobViewModel jobViewModel;

  setUp(() {
    fakeJobRepository = FakeJobRepository();
    jobViewModel = JobViewModel(jobRepository: fakeJobRepository);
  });

  group('addJob', () {
    test('should add job to jobMap', () async {
      // before adding job
      await jobViewModel.getAllJobs();
      expect(jobViewModel.jobMap, {
        1: JobData()..id = 1..title = 'Job 1',
        2: JobData()..id = 2..title = 'Job 2',
        3: JobData()..id = 3..title = 'Job 3',
      });

      await jobViewModel.addJob(jobData: JobData()..id = 4..title = 'Job 4');
      
      // after adding job
      await jobViewModel.getAllJobs();
      expect(jobViewModel.jobMap, {
        1: JobData()..id = 1..title = 'Job 1',
        2: JobData()..id = 2..title = 'Job 2',
        3: JobData()..id = 3..title = 'Job 3',
        4: JobData()..id = 4..title = 'Job 4',
      });
    });
  });

  group('updateJob', () {
    test('should update job in jobMap', () async {
      // before updating job
      await jobViewModel.getAllJobs();
      expect(jobViewModel.jobMap, {
        1: JobData()..id = 1..title = 'Job 1',
        2: JobData()..id = 2..title = 'Job 2',
        3: JobData()..id = 3..title = 'Job 3',
      });

      await jobViewModel.updateJob(jobData: JobData()..id = 2..title = 'Job 2 updated');

      // after updating job
      await jobViewModel.getAllJobs();
      expect(jobViewModel.jobMap, {
        1: JobData()..id = 1..title = 'Job 1',
        2: JobData()..id = 2..title = 'Job 2 updated',
        3: JobData()..id = 3..title = 'Job 3',
      });
    });
  });

  group('deleteJob', () {
    test('should delete job in jobMap', () async {
      // before deleting job
      await jobViewModel.getAllJobs();
      expect(jobViewModel.jobMap, {
        1: JobData()..id = 1..title = 'Job 1',
        2: JobData()..id = 2..title = 'Job 2',
        3: JobData()..id = 3..title = 'Job 3',
      });

      await jobViewModel.deleteJob(1);
      
      // after deleting job
      await jobViewModel.getAllJobs();
      expect(jobViewModel.jobMap, {
        2: JobData()..id = 2..title = 'Job 2',
        3: JobData()..id = 3..title = 'Job 3',
      });
    });
  });

  group('getAllJobs', () {
    test('should get all jobs from repository', () async {
      await jobViewModel.getAllJobs();
      expect(jobViewModel.jobMap, {
        1: JobData()..id = 1..title = 'Job 1',
        2: JobData()..id = 2..title = 'Job 2',
        3: JobData()..id = 3..title = 'Job 3',
      });
    });
  });
}