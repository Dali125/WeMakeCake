
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Global/splash_screen.dart';


import 'Global/login.dart';
import 'firebase_options.dart';
import 'homepage.dart';

void main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MySplash());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      title: 'Flutter Demo',


      initialRoute: FirebaseAuth.instance.currentUser == null ? 'login' : 'home',
      routes: {

        'home' : (context) => const MyHomePage(),
        'login' : (context) => const Login()
      },

    );
  }
}




class MySplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}



