import 'package:flutter/material.dart';
import 'package:myapp_project/do_it/starRating.dart';
import 'package:myapp_project/nonUse/view_image_list.dart';
import 'package:myapp_project/item/arraylist.dart';
import 'package:myapp_project/nonUse/starrate.dart';

// List<int> ratings = [];

class DramaDetailPage extends StatefulWidget {
  final String title;
  final int index;

  DramaDetailPage({required this.title, required this.index});
  @override
  _DramaDetailPageState createState() => _DramaDetailPageState();

}

class _DramaDetailPageState extends State<DramaDetailPage> {
  int titleIndex = 0;
  List rateIm = [
    {'star': 0, 'title': 'Destined'},
    {'star': 0, 'title': 'Love between fairy and devil'},
    {'star': 0, 'title': 'Hidden Love'},
    {'star': 0, 'title': 'Till the end of the moon'},
    {'star': 0, 'title': 'Love you seven times'},
    {'star': 0, 'title': 'Our Secret'},
    {'star': 0, 'title': 'Love Like The Galaxy'},
    {'star': 0, 'title': 'Legend of Shenli'},
    {'star': 0, 'title': 'Amidst a snowstorm of love'},
    {'star': 0, 'title': 'Warm on a cold night'},
    {'star': 0, 'title': '222'},
    {'star': 0, 'title': '333'},
  ];
/*
  int changeStar(String title, int newStar) {
    for (int i = 0; i < listRatedrama().rateIm.length; i++) {
      if (listRatedrama().rateIm[i]['title'] == title) {
        listRatedrama().rateIm[i]['star'] = newStar;
        titleIndex = i;
        print(listRatedrama().rateIm[i]['star']);
      } else {}
    }
    return titleIndex;
    // int index = listRatedrama().rateIm.indexWhere((item) => item['title'] == title);
    // if (index != -1) {
    //   setState(() {
    //     listRatedrama().rateIm[index]['star'] = newStar;
    //   });
    // }
  }
*/
  int retStar(int titleIndex) {
    // int index = rateIm.indexWhere((item) => item['title'] == title);
    return rateIm[titleIndex]['star'];
  }
  void updateRating(String title, int newRating) {
    setState(() {
      int index = rateIm.indexWhere((item) => item['title'] == title);
      if (index != -1) {
        rateIm[index]['star'] = newRating;
        // listRatedrama().rateIm[index]['star'] = rateIm[index]['star'];
      }
      print(rateIm[index]['star']);
    });
  }

  @override
  Widget build(BuildContext context) {
    int indexIm = 0;
    int score = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
      ),
      backgroundColor: Color.fromARGB(255, 237, 224, 125),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 80, 232, 240)),
                
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 198, 200, 176),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 120, 123, 65).withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Image.asset(
                listAss_drama().imageAss[widget.index],
                width: 400,
                height: 400,
                fit: BoxFit.contain,
              ),
            ),SizedBox(height: 10),
            Text(
              'Rate this drama:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StarRating(
                  // initialRating: 0,
                  title: widget.title,
                  onRatingChanged: (rating) {
                    print('คะแนนที่ให้: $rating ดาว');
                    score = rating;
                    // print('score: $score');

                    updateRating(widget.title, score);  // >1
                    // listRatedrama().changeStar(widget.title, score);
                    // print('getRate: ${listRatedrama().rateIm[widget.index]['star']}');
                  },
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You rated this drama stars ',
                  style: TextStyle(fontSize: 18),
                ),
                InkWell(
                  splashColor: Colors.yellow,
                  highlightColor: Colors.red,
                  onTap: () {
                    setState(() { });
                  },
                  child: 
                    Icon(Icons.star_border_purple500, size: 50),
                  ),
                Text(
                  // ': ' + listRatedrama().rateIm[widget.index]['star'].toString(),
                  ': ' + rateIm[widget.index]['star'].toString(),  // >1
                  style: TextStyle(
                    fontSize: 40.0
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*
class listRatedrama {
  List rateIm = [
    {'star': 0, 'title': 'Destined'},
    {'star': 0, 'title': 'Love between fairy and devil'},
    {'star': 0, 'title': 'Hidden Love'},
    {'star': 0, 'title': 'Till the end of the moon'},
    {'star': 0, 'title': 'Love you seven times'},
    {'star': 0, 'title': 'Our Secret'},
    {'star': 0, 'title': 'Love Like The Galaxy'},
    {'star': 0, 'title': 'Legend of Shenli'},
    {'star': 0, 'title': 'Amidst a snowstorm of love'},
    {'star': 0, 'title': '111'},
    {'star': 0, 'title': '222'},
    {'star': 0, 'title': '333'},
  ];
}
*/


