import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_route_animator/page_route_animator.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rive/rive.dart';
import 'package:untitled/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    //Screen Sizes
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;


    return Scaffold(
      body: AnimatedSplashScreen(splash:  Container(height: height,width: width,
        child: Stack(children: [







          RiveAnimation.asset('assets/RivFiles/cute.riv',),
          Padding(
            padding: EdgeInsets.only(left: width/3, right: 30 , top: width - 130),
            child: Image.asset('assets/CakeC.png'),
          ),

        ]),),
          animationDuration: const Duration(milliseconds: 5000),
          pageTransitionType: PageTransitionType.fade,
          splashIconSize: height,
          nextScreen: MyApp()),
    );
  }
}
