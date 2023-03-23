import 'package:flutter/material.dart';
import 'package:page_route_animator/page_route_animator.dart';
import 'package:untitled/Global/my_text_guides.dart';

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
    
    //Getting the Photos from the list
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

class MyExpandedCakeView extends StatefulWidget {

  final post;
  const MyExpandedCakeView({Key? key, this.post}) : super(key: key);

  @override
  State<MyExpandedCakeView> createState() => _MyExpandedCakeViewState();
}

class _MyExpandedCakeViewState extends State<MyExpandedCakeView> {



  @override
  Widget build(BuildContext context) {

    //Getting the Photos from the list
    List pics = widget.post['photos'];

    return Scaffold(

      appBar: AppBar(


      ),

      body: Column(
        children: [
          AspectRatio(aspectRatio: 4/3
          ,child: Image.network(pics[0],fit: BoxFit.cover,),),

          const SizedBox(height: 10,),


        ],
      ),
    );
  }
}

