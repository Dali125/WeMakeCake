import 'package:flutter/material.dart';
import 'package:page_route_animator/page_route_animator.dart';
import 'package:untitled/Global/colors/ui_web_constant_index.dart';

import '../../../Global/posts.dart';
import '../../../Global/searchbarr.dart';

class BuyerView extends StatefulWidget {
  const BuyerView({Key? key}) : super(key: key);

  @override
  State<BuyerView> createState() => _BuyerViewState();
}

class _BuyerViewState extends State<BuyerView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            stretch: true,
            elevation: 10,

            snap: true,
            floating: true,
            expandedHeight: 80,

            flexibleSpace:

            Center(
              child: Row(


                children: [



                  Text('Logo Here'),
                  Expanded(child: SizedBox(width: 240,)),

                  //Going to search
                  IconButton(onPressed: (){

                    Navigator.push(context, PageRouteAnimator(child: Search(),
                        routeAnimation: RouteAnimation.topToBottomWithFade));


                  }, icon: const Icon(Icons.search_outlined)),
                  SizedBox(width: 30,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_checkout_rounded)),




                ],






              ),
            ),
          ),

          SliverToBoxAdapter(

            child: Posts(),
          )


        ],
      ),
    );
  }
}

