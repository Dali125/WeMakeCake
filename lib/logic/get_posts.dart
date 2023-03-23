import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Global/my_text_guides.dart';
import 'package:untitled/mobileview/mobile_ui/mobile_posts.dart';
import 'package:untitled/webview/web_posts.dart';

class GetPosts extends StatefulWidget {
  const GetPosts({Key? key}) : super(key: key);

  @override
  State<GetPosts> createState() => _GetPostsState();
}

class _GetPostsState extends State<GetPosts> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('posts').snapshots(),
      builder: (context, snapshot){

        if(snapshot.hasData){

print(snapshot.data);

          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              width < 600 ? TextGuide(text: 'Desserts of the day',
                  fontsize: 30, weight: FontWeight.bold,) : Text('data'),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index){
                      var userInfo = snapshot.data!.docs[index];
                     return SizedBox(

                       height: 300,

                       child:  width < 600 ? MobilePosts(posts: userInfo,) : WebPosts(posts: userInfo,),


                     );













                }),
              ),
            ],
          );







          //Incase Error Happens
        }else{

          print(snapshot.data);




          return Center(

            child: CircularProgressIndicator()
          );
        }






      }


    );
  }
}
