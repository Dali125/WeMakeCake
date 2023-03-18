
import 'package:flutter/material.dart';
import 'package:untitled/webview/web_home.dart';

import 'mobileview/mobile_home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}




class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {









  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Material(
        child: width < 600 ? MobileHome() : WebHome()
    );
  }
}
