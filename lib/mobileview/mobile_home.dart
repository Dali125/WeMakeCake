
import 'package:flutter/material.dart';

import '../Global/cake_add.dart';
import '../Global/colors/ui_web_constant_index.dart';
import 'mobile_ui/cake_home/mobilecake_home.dart';
class MobileHome extends StatefulWidget {



  MobileHome({Key? key,}) : super(key: key);

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> with SingleTickerProviderStateMixin{




  List Tabs = <Widget>[

    TrueHome(),
Center(child:Text('')),
    Center(child: Text(''),),
    Center(child: Text('home4'),)



  ];


List<BottomNavigationBarItem> tabs = [



];

  //initial value is 0
  int index = 0;


  void initState(){
    super.initState();
    index = 0;


  }
  
  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      body: CustomScrollView(

        slivers: [







          SliverToBoxAdapter(

            child: Tabs[index],

          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple[200],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,

          currentIndex: index,
          items:const [
      BottomNavigationBarItem(icon: Icon(Icons.cake_outlined,
        color: Colors.grey,
      ),label: 'Home',activeIcon: Icon(Icons.cake, color: Colors.blue,)

      ),
            BottomNavigationBarItem(icon: Icon(Icons.add_box, color: Colors.grey,),label: 'Orders'
                ,activeIcon: Icon(Icons.add_box, color: Colors.blue,)
            ),
            BottomNavigationBarItem(icon: Icon(Icons.cake_outlined, color: Colors.grey,), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline, color: Colors.grey,),label: 'Profile', activeIcon:Icon(Icons.person, color: Colors.blue )),


          ],
      onTap: (chill){
            setState(() {
              index = chill;

print(index);
            });


      },),



floatingActionButton: FloatingActionButton(onPressed: () {

  Navigator.push(context, MaterialPageRoute(builder: (context) => CakeAdd()));
},
  child: Icon(Icons.add),

),






    );


  }
}

//The Drawer view




