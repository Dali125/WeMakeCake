import 'package:flutter/material.dart';

class CakeSelection extends StatefulWidget {
  const CakeSelection({Key? key}) : super(key: key);

  @override
  State<CakeSelection> createState() => _CakeSelectionState();
}

class _CakeSelectionState extends State<CakeSelection> {
  
  
  List CakeThemeCaegories = [

    'Birthday', 'Wedding',
    'Anniversary', 'Graduation',
    'Baby Shower', 'Bridal Shower',
    'Retirement', 'Housewarming',
    'Promotion', 'New Years Eve',
    'Christmas', 'Easter',
    'Thanksgiving', 'Halloween',
    'Valentines Day', 'Mothers Day',
    'Fathers Day',
  ];

  List<Image> themeImages = [
    Image.asset('assets/cake_type/BDAYCAKE.jpg'),
    Image.asset('assets/cake_type/GRADCAKE.jpg'),


  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
