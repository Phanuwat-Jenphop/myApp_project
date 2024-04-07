import 'package:flutter/material.dart';
import 'package:myapp_project/nonUse/view_image_list.dart';
import 'package:myapp_project/item/arraylist.dart';
import 'package:myapp_project/pages/DramaDetailPage.dart';

class RateDrama extends StatefulWidget {
  final String Rtitle;
  // final int Rrate;
  RateDrama({required this.Rtitle});

  @override
  State<RateDrama> createState() => _RateState();
}

class _RateState extends State<RateDrama> {
  // List<int> ratings = [];
  int _rating = 0;

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
             Icons.star,
              
              size: 40,
              color: Colors.orange,
            ),
        ],  
      ),
    );     
  }
      
}
