import 'package:flutter/material.dart';
import 'package:untitled/webview/web_posts.dart';
import '../Global/cake_add.dart';
class WebHome extends StatefulWidget {
  const WebHome({Key? key}) : super(key: key);

  @override
  State<WebHome> createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {


  //initial value is 0
  int index = 0;

  void initState(){
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width - 72;
    return

        Row(
          children: [
            NavigationRail(
              backgroundColor: Colors.blue[100],

              elevation: 10,
                onDestinationSelected: (inr){

                  setState(() {
                    index = inr;
                  });
                },
                destinations: [
                  NavigationRailDestination(icon: Icon(Icons.cake_outlined), label: Text('Cake',style: TextStyle(color: Colors.black),),),
                  NavigationRailDestination(icon: Icon(Icons.cake_outlined), label: Text('Cake')),
                  NavigationRailDestination(icon: Icon(Icons.cake_outlined), label: Text('Cake')),
                  NavigationRailDestination(icon: Icon(Icons.cake_outlined), label: Text('Cake')),



            ], selectedIndex: index),


            Container(
              height: height,
              width: width,
              color: Colors.red,
              child: Scaffold(
                
                
                
                
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                      color: Colors.deepPurple[20],
                      width: width,
                      height: 50,
                      child: Image.asset('assets/CakeC.png'),
                    ),
                    Container(height: 400,
                      width: width,
                    child: WebPosts(),
                    color: Colors.deepPurple,)
                    
                    
                    
                  ],
                ),




                floatingActionButton: FloatingActionButton(onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) => CakeAdd()));
                },
                  child: Icon(Icons.add),

                ),
              ),
            )





          ],

        );
  }
}
