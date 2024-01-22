import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:testing_examples/part4/feature/home_bloc.dart';
import 'package:testing_examples/part4/model/job_data.dart';

void main() {
  late Isar isar;
  late HomeBloc homeBloc;

  setUp(() async {
    await isar.writeTxn(() async => isar.clear());
    homeBloc = HomeBloc(isar: isar);
  });

  tearDown(() {
    homeBloc.close();
  });

  setUpAll(() async {
    await Isar.initializeIsarCore(download: true);
    isar = await Isar.open(
      [
        JobDataSchema,
      ],
      directory: '',
    );
  });

  tearDownAll(() {
    isar.close();
  });

  group('data', () {
    test('data should emit what Isar.watchData emits', () async {
      expectLater(
          homeBloc.data,
          emitsInOrder([
            [],
            [JobData()..title = 'IT'],
            [JobData()..title = 'IT', JobData()..title = 'Teacher'],
            [JobData()..title = 'IT', JobData()..title = 'Teacher', JobData()..title = 'Doctor'],
          ]));

      // put data to Isar
      await isar.writeTxn(() async {
        await isar.jobDatas.put(JobData()..title = 'IT');
      });

      await isar.writeTxn(() async {
        await isar.jobDatas.put(JobData()..title = 'Teacher');
      });

      await isar.writeTxn(() async {
        await isar.jobDatas.put(JobData()..title = 'Doctor');
      });
    });

    test('data should emit nothing when Isar does not emit any events', () async {
      expectLater(homeBloc.data, emitsInOrder([[]]));
    });
  });
}
