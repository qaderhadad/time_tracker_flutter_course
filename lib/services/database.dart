import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:time_tracker_flutter_course/models/job.dart';
import 'api_path.dart';
import 'firestore_service.dart';

abstract class Database {
  Future<void> createJob(Job job);
  Stream<List<Job>> jobsStream();
}

//Generate Unique Id for you methods
String documentIdFromCurrnetDate() => DateTime.now().toIso8601String();

class FirestoreDatabase implements Database {
  FirestoreDatabase({@required this.uid}) : assert(uid != null);
  final String uid;

  final _service = FirestoreService.instance; //insure creation of only one object

  Future<void> createJob(Job job) => _service.setData(
        path: APIPath.job(uid, documentIdFromCurrnetDate()),
        data: job.toMap(),
      );

  Stream<List<Job>> jobsStream() => _service.collectionStream(
    path: APIPath.jobs(uid),
    builder: (data) => Job.fromMap(data),
  );

}