import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:time_tracker_flutter_course/app/home/models/job.dart';
import 'package:time_tracker_flutter_course/services/api_path.dart';

abstract class Database {
  Future<void> createJob(Job job);
  Stream<List<Job>> jobsStream();
}

class FirestoreDatabase implements Database {
  FirestoreDatabase({@required this.uid}) : assert(uid != null);
  final String uid;

  Future<void> createJob(Job job) => _setData(
        path: APIPath.job(uid, 'job_abc'),
        data: job.toMap(),
      );

  Stream<List<Job>> jobsStream() {
    final path = APIPath.jobs(uid);
    final reference = FirebaseFirestore.instance.collection(path);
    final snapshots = reference.snapshots();
    return snapshots.map((snapshot) => snapshot.docs.map(
          (snapshot) {
            final data = snapshot.data();
            return data != null ? Job(
              name: data['name'],
              ratePerHour: data['ratePerHour'],
            ) : null;
          },
        ));
  }

  Future<void> _setData({String path, Map<String, dynamic> data}) async {
    final reference = FirebaseFirestore.instance.doc(path);
    print('$path: $data');
    await reference.set(data);
  }
}
