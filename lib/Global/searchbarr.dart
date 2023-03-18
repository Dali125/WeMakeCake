import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.amber]
            )
          ),
        ),

        title: TextField(
          onChanged: (text){

          }
          ,
          decoration: InputDecoration(
            hintText: "Search for cakes",
                enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 490, color: Colors.red,)
          )
          ),

        ),
      ),
    );
  }
}
