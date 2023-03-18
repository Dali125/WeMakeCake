import 'package:flutter/material.dart';

class MobilePosts extends StatefulWidget {



  final  posts;
  const MobilePosts({Key? key,required this.posts}) : super(key: key);

  @override
  State<MobilePosts> createState() => _MobilePostsState();
}

class _MobilePostsState extends State<MobilePosts> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    
    
    List pics = widget.posts['photos'];
    
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Material(
        elevation: 10,
        child: Container(

          color: Colors.green,
          height: 350,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Text('data'),
              Text('data')
            ],
          )
        ),
      ),
    );
  }
}
