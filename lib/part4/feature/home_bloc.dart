import 'dart:async';

import 'package:isar/isar.dart';
import 'package:testing_examples/part4/model/job_data.dart';

class HomeBloc {
  final Isar isar;
  HomeBloc({required this.isar}) {
    _streamSubscription = isar.jobDatas.where().watch(fireImmediately: true).listen((event) {
      _streamController.add(event);
    });
  }

  final _streamController = StreamController<List<JobData>>();
  StreamSubscription? _streamSubscription;

  Stream<List<JobData>> get data => _streamController.stream;

  void close() {
    _streamSubscription?.cancel();
    _streamController.close();
    _streamSubscription = null;
  }
}
