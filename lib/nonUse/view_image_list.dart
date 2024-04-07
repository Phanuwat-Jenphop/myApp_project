import 'package:flutter/material.dart';
import 'package:myapp_project/item/arraylist.dart';
import 'package:myapp_project/pages/DramaDetailPage.dart';

class ImageListView extends StatefulWidget {
  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'https://imgix.ranker.com/list_img_v2/18020/2378020/original/2378020-u1?fit=crop&fm=pjpg&q=80&dpr=2&w=1200&h=720',
      'https://drive.google.com/file/d/1kWnSwngfDpqyLHoKeUIUy2Kn9Kg3PMG3/view?usp=sharing',
      'https://i.pinimg.com/564x/b4/1b/cc/b41bcc21d1a50b5420130ebbd3297a60.jpg',
      'https://38jiejie.com/wp-content/uploads/2022/09/Zhao-Lusi-Says-Her-Career-Hasnt-Always-Been-a-Smooth-Journey-Weibo_09.24.22.jpeg.webp',
    ];
    final List<String> imageAss = [
      'images/beautifulGirls/chaoyue01.jpeg',
      'images/beautifulGirls/chaoyue02.jpeg',
      'images/beautifulGirls/chaoyue03.jpeg',
      'images/beautifulGirls/jingyi01.jpeg',
      'images/beautifulGirls/jingyi02.jpeg',
      'images/beautifulGirls/jingyi03.jpeg',
      'images/beautifulGirls/lusi01.jpeg',
      'images/beautifulGirls/lusi02.jpeg',
      'images/beautifulGirls/lusi03.jpeg',
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: imageAss.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              imageAss[index],
            ),
            title: Text('Image $index'),
            onTap: () {
              // print(' Image ${listRatedrama().rateIm[index]['star']}');
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    // content: Image.asset(imageAss[index]),
                    // for(int i=0;i<listRatedrama().rateIm.length;i++){
                    //   icon: Icon(Icons.star) ,
                    // },
                    content: Container(
                      height: 200,
                      width: 200,
                      child: ListView.builder(
                        itemCount: 5, // จำนวน icon ที่ต้องการสร้าง
                        itemBuilder: (context, index) {
                          return Icon(
                            Icons.star,
                            color: Colors.orange,
                          );
                        },
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

