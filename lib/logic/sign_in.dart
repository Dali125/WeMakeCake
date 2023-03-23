import 'package:firebase_auth/firebase_auth.dart';

class SignIn{

  final email;
  final password;


 SignIn({required this.email, required this.password});




  Future<void> ConfirmSignIn() async{

    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);






  }




}