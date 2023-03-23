import 'package:flutter/material.dart';

class TextGuide extends StatelessWidget {
  final String text;
 final  double fontsize;
  final weight;

  const TextGuide({Key? key, required this.text, required this.fontsize, this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20,top: 20),
        child: Text(text,

          style: TextStyle(fontSize: fontsize,
          fontWeight: weight),),);
  }
}
