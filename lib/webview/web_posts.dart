import 'package:flutter/material.dart';
import 'package:page_route_animator/page_route_animator.dart';

import '../Global/my_text_guides.dart';
import '../mobileview/mobile_ui/mobile_posts.dart';

class WebPosts extends StatefulWidget {
  final posts;
  const WebPosts({Key? key, this.posts}) : super(key: key);

  @override
  State<WebPosts> createState() => _WebPostsState();
}

class _WebPostsState extends State<WebPosts> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    //Getting the Photos from the  list
    List pics = widget.posts['photos'];


    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40,


          ),
          color: Colors.white,
        ),
        height: 200,
        width: 200,

        child: Material(
          elevation: 15,
          child: Column(
            children: [


              //The Cake Image
              Expanded(

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,
                          width: 5),


                    ),
                    child: Material(
                      elevation:3 ,
                      shadowColor: Colors.white,

                      child: AspectRatio(
                          aspectRatio: 4/3,
                          child: Ink.image(image:

                          NetworkImage( pics[0]),
                            fit: BoxFit.cover,
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, PageRouteAnimator(child: MyExpandedCakeView(post: widget.posts,


                                ), routeAnimation: RouteAnimation.fade));
                              },
                            ),
                          )




                      ),
                    ),
                  ),
                ),
              ),

              //The Type of Kake
              TextGuide(text: widget.posts['title'], fontsize: 20, weight: FontWeight.bold,),

              //The price of the Cake
              TextGuide(text: 'K ${widget.posts['Price'].toString()}', fontsize: 18, weight: FontWeight.bold,)
            ],
          ),
        ),
      ),
    );
  }
}
