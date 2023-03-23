import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Global/colors/ui_web_constant_index.dart';
import 'package:untitled/Global/ui_elements/constant_header.dart';


class CakeAdd extends StatelessWidget {
  const CakeAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    Future selectFile() async{

      final result = await FilePicker.platform.pickFiles();
    }


    return Scaffold(

      body: CustomScrollView(

        slivers: [
          ConstantHeader(text: 'Create Post',),
          SliverToBoxAdapter(

            child: Column(


              children: [


                ElevatedButton(onPressed: (){

                  selectFile();


                }, child: const Text('Select Files')
          )
              ],
            ),


          )


        ],
      ),
    );
  }
}
