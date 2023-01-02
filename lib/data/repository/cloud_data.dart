import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:practice/data/firebase_count.dart';

class CountDataDao {
  final CollectionReference _collection =
      FirebaseFirestore.instance.collection('collection_count');

  void saveCountDataDao(FirebaseCount countData) {
    _collection.add(countData.toJson());
  }

  Stream<QuerySnapshot> getSnapShots() {
    return _collection
        .orderBy('dateTime', descending: true)
        .limit(1)
        .snapshots();
  }
}
