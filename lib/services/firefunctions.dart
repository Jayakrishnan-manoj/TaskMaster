import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future signUpUser(String name, String email, String password) async {
    try {
      User user = (await auth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;
    } on FirebaseAuthException catch (err) {
      return err.message;
    }
  }

  Future loginUser(String email,String password) async {
    try{
      User user = (await auth.signInWithEmailAndPassword(email: email, password: password)).user!;
    } on FirebaseAuthException catch(err){
      return err.message;
    }
  }
}
