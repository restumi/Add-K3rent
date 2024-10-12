import 'package:cloud_firestore/cloud_firestore.dart';

class databaseMethods {
  Future addDetailBarang(Map<String, dynamic> infoBarangMap, String id) async {
    return await FirebaseFirestore.instance
    .collection("orang")
    .doc(id)
    .set(infoBarangMap);
  }

  Future<Stream<QuerySnapshot>> getData() async {
    return await FirebaseFirestore.instance.collection("orang").snapshots();
  }
}



