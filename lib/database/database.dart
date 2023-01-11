import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  final String? uid;
  Database({this.uid});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");

  Future saveUserData(String fullName, String email) async {
    return await userCollection.doc(uid).set(
      {
        "fullName": fullName,
        "email": email,
        "uid": uid,
      },
    );
  }

  Future saveUser(String fullName, String email) async {
    return await userCollection.doc(uid).set(
      {
        "fullName": fullName,
        "email": email,
        "uid": uid,
      },
    );
  }

  Future getUserData(String email) async {
    QuerySnapshot snapshot =
        await userCollection.where("email", isEqualTo: email).get();
    return snapshot;
  }
}
