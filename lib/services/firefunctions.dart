import 'package:firebase_auth/firebase_auth.dart';
import 'package:task_master/database/database.dart';

class Auth {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future signUpUser(String name, String email, String password) async {
    try {
      User user = (await auth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (user != null) {
        await Database(uid: user.uid).saveUserData(name, email);
        return true;
      }
    } on FirebaseAuthException catch (err) {
      return err.message;
    }
  }

  Future loginUser(String email, String password) async {
    try {
      User user = (await auth.signInWithEmailAndPassword(
              email: email, password: password))
          .user!;
      return true;
      // if(user!=null){
      //   return true;
      // }
    } on FirebaseAuthException catch (err) {
      return err.message;
    }
  }
}
