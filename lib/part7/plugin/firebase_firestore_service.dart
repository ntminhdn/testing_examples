import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFirestoreService {
  Future<Map<String, dynamic>?> getMyJob() async {
    final response = await FirebaseFirestore.instance.collection('job').doc('me').get();

    return response.data();
  }
}
