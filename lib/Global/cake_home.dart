import 'package:flutter/material.dart';
import 'package:untitled/mobileview/mobile_ui/cake_home/mobilecake_home.dart';

class CakeHome extends StatefulWidget {
  const CakeHome({Key? key}) : super(key: key);

  @override
  State<CakeHome> createState() => _CakeHomeState();
}

class _CakeHomeState extends State<CakeHome> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      
      
      slivers: [
        
        width < 600 ? TrueHome() : Text('Webview')
      ],
      
    );
  }
}
