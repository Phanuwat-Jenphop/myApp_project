import 'package:flutter/material.dart';

class listAss_drama {
  List<String> imageAss = [
    'images/dramas/destined02.jpeg',
    'images/dramas/between02.jpeg',
    'images/dramas/hidden_love02.jpeg',
    'images/dramas/till_the_end02.jpeg',
    'images/dramas/seven_times02.jpeg',
    'images/dramas/our_secret02.jpeg',
    'images/dramas/love_like02.jpeg',
    'images/dramas/shenli02.jpeg',
    'images/dramas/amist02.jpeg',
    'images/dramas/warm_on02.jpeg',
  ];
  List<String> titleimage = [
    'Destined',
    'Love between fairy and devil',
    'Hidden Love',
    'Till the end of the moon',
    'Love you seven times',
    'Our Secret',
    'Love Like The Galaxy',
    'Legend of Shenli',
    'Amidst a snowstorm of love',
    'Warm on a cold night',

  ];
  List dataIm = [
    {'images': 'images/dramas/destined01.jpeg', 'title': 'Destined'},
    {
      'images': 'images/dramas/between01.jpeg',
      'title': 'Love between fairy and devil'
    },
    {'images': 'images/dramas/hidden_love01.jpeg', 'title': 'Hidden Love'},
    {
      'images': 'images/dramas/till_the_end01.jpeg',
      'title': 'Till the end of the moon'
    },
    {
      'images': 'images/dramas/seven_times01.jpeg',
      'title': 'Love you seven times'
    },
    {'images': 'images/dramas/our_secret01.jpeg', 'title': 'Our Secret'},
    {
      'images': 'images/dramas/love_like01.jpeg',
      'title': 'Love Like The Galaxy'
    },
    {'images': 'images/dramas/shenli01.jpeg', 'title': 'Legend of Shenli'},
    {
      'images': 'images/dramas/amist01.jpeg',
      'title': 'Amidst a snowstorm of love'
    },
    {
      'images': 'images/dramas/warm_on01.jpeg',
      'title': 'Warm on a cold night'
    },
  ];
}

class map_drama {
  List dataIm = [
    {'images': 'images/dramas/destined01.jpeg', 'title': 'Destined'},
    {
      'images': 'images/dramas/between01.jpeg',
      'title': 'Love between fairy and devil'
    },
    {'images': 'images/dramas/hidden_love01.jpeg', 'title': 'Hidden Love'},
    {
      'images': 'images/dramas/till_the_end01.jpeg',
      'title': 'Till the end of the moon'
    },
    {
      'images': 'images/dramas/seven_times01.jpeg',
      'title': 'Love you seven times'
    },
    {'images': 'images/dramas/our_secret01.jpeg', 'title': 'Our Secret'},
    {
      'images': 'images/dramas/love_like01.jpeg',
      'title': 'Love Like The Galaxy'
    },
    {'images': 'images/dramas/shenli01.jpeg', 'title': 'Legend of Shenli'},
    {
      'images': 'images/dramas/amist01.jpeg',
      'title': 'Amidst a snowstorm of love'
    },
    {
      'images': 'images/dramas/warm_on01.jpeg',
      'title': 'Warm on a cold night'
    },
  ];
}

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
    {'star': 0, 'title': 'Warm on a cold night'},
    {'star': 0, 'title': '222'},
    {'star': 0, 'title': '333'},
  ];

  void changeStar(String title, int newStar) {
    int index = rateIm.indexWhere((item) => item['title'] == title);

    for (int i = 0; i < rateIm.length; i++) {
      if (rateIm[i]['title'] == title) {
        rateIm[i]['star'] = newStar;
        // titleIndex = i;
        print('rate in List: ${rateIm[i]['star']}');
      } else {}
    }

    // return titleIndex;
    // int index = listRatedrama().rateIm.indexWhere((item) => item['title'] == title);
    // if (index != -1) {
    //   setState(() {
    //     listRatedrama().rateIm[index]['star'] = newStar;
    //   });
    // }
  }

  void toPrint() {
    for (int i = 0; i < listRatedrama().rateIm.length; i++) {
      print(rateIm[i]['title']);
      print(rateIm[i]['star'].toString());
    }
  }
}
// สร้าง class ที่จะใช้เรียกใช้ข้อมูลจาก class UserData
