/*

  @override
  void initState() {
    super.initState();
    _loadRating();
  }

  void _loadRating() {
    // โหลดคะแนนจาก List ตามดัชนี (index)
    // _rating = ratings[widget.index];
  }

  void _saveRating() {
    // นี่คือตัวอย่างเท่านั้น คุณสามารถแทนที่ด้วยการบันทึกลงฐานข้อมูลหรือทำการส่งข้อมูลไปยังเซิร์ฟเวอร์ตามที่คุณต้องการ
    print('Rating for ${widget.Rtitle}: $_rating');
  }


  */


/*

class _AnimationState extends State<Movies> {
  
  List<Animations>? _anime;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            var dio = Dio(BaseOptions(responseType: ResponseType.plain));
            var response =
                await dio.get('https://api.sampleapis.com/cartoons/cartoons2D');
            // print('Status code: ${response.statusCode}');
            response.headers.forEach((title, values) {
              // print('$title: $values');
            });
            print(response.data.toString());
            setState(() {
              var list = jsonDecode(response.data.toString());

              _anime = list.map<Animations>((item) => Animations.fromJson(item)).toList();
            });
          },
          child: Text('Animations'),
        ),
        Expanded(
          child: _anime == null
              ? SizedBox.shrink()
              // : calldt(),
              : ListView.builder(
                  itemCount: _anime!.length,
                  itemBuilder: (context, index) {
                    var anime = _anime![index];

                    return ListTile(
                      // minLeadingWidth: 200.0,
                      horizontalTitleGap: 200.0,
                      trailing: anime.image == ''
                          ? null
                          : Image.network(
                            width: 350,
                            height: 350,
                              anime.image ?? '',
                              errorBuilder: (context, error, stackTrace) {
                                // if error, show icon error
                                return Icon(Icons.error,
                                    color: Color.fromARGB(255, 54, 136, 244));
                              },
                            ),
                      // title: Text(anime.title ?? ''),
                      // subtitle: Text(anime.id.toString() ?? ''),
                      onTap: () {
                        print('You click ${anime.title}');
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 500,
                                  height: 600,
                                  // color: Color.fromARGB(255, 156, 159, 159),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 181, 241, 241),
                                    border:
                                    Border.all(width: 4.0, color: Color.fromARGB(255, 58, 147, 243)), // ขอบนอก=ความหนาขอบนอก
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(anime.title ?? '',
                                        style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(170, 2, 80, 80)
                                        ),
                                      ),
                                      SizedBox(),
                                      Image.network(
                                        width: 280,
                                        height: 350,
                                        anime.image ?? '',
                                        errorBuilder:
                                          (context, error, stackTrace) {
                                        // if error, show icon error
                                            return Icon(
                                              Icons.error,
                                              color: Color.fromARGB(255, 54, 136, 244),
                                            );
                                          },
                                          fit: BoxFit.fill,
                                      ),
                                      SizedBox(),
                                      Text("Animation ID: " +  anime.id.toString() ?? '',
                                         style: TextStyle(
                                          fontSize: 25.0,
                                          color: Color.fromARGB(255, 16, 108, 108)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
        ),
      ],
    );
  }
}

*/


/*
ListTile(
                      
                      trailing: anime.image == ''
                          ? null
                          : Image.network(
                            width: 350,
                            height: 350,
                              anime.image ?? '',
                              errorBuilder: (context, error, stackTrace) {
                                // if error, show icon error
                                return Icon(Icons.error,
                                    color: Color.fromARGB(255, 54, 136, 244));
                              },
                            ),
                      // title: Text(anime.title ?? ''),
                      // subtitle: Text(anime.id.toString() ?? ''),
                      onTap: () {
                        print('You click ${anime.title}');
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 500,
                                  height: 600,
                                  // color: Color.fromARGB(255, 156, 159, 159),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 181, 241, 241),
                                    border:
                                    Border.all(width: 4.0, color: Color.fromARGB(255, 58, 147, 243)), // ขอบนอก=ความหนาขอบนอก
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(anime.title ?? '',
                                        style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(170, 2, 80, 80)
                                        ),
                                      ),
                                      SizedBox(),
                                      Image.network(
                                        width: 280,
                                        height: 350,
                                        anime.image ?? '',
                                        errorBuilder:
                                          (context, error, stackTrace) {
                                        // if error, show icon error
                                            return Icon(
                                              Icons.error,
                                              color: Color.fromARGB(255, 54, 136, 244),
                                            );
                                          },
                                          fit: BoxFit.fill,
                                      ),
                                      SizedBox(),
                                      Text("Animation ID: " +  anime.id.toString() ?? '',
                                         style: TextStyle(
                                          fontSize: 25.0,
                                          color: Color.fromARGB(255, 16, 108, 108)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
*/

/* 
    ส่งข้อมูล api ไปให้ class อื่นใช้
class AnimationService {
  static Future<List<Animations>> fetchAnimations() async {
    try {
      var dio = Dio(BaseOptions(responseType: ResponseType.plain));
      var response = await dio.get('https://api.sampleapis.com/cartoons/cartoons2D');

      if (response.statusCode == 200) {
        var list = jsonDecode(response.data.toString()) as List<dynamic>;
        return list.map((item) => Animations.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load animations');
      }
    } catch (e) {
      throw Exception('Failed to load animations: $e');
    }
  }
}

// เรียกใช้เมทอด fetchAnimations
try {
  List<Animations> animations = await AnimationService.fetchAnimations();
  // ทำสิ่งที่ต้องการกับ animations ที่ได้รับ
} catch (e) {
  // จัดการข้อผิดพลาดเมื่อเรียกใช้ API ไม่สำเร็จ
  print('Error fetching animations: $e');
}
*/
  
/*
class _DramaDetailPageState extends State<DramaDetailPage> {
  int _rating = 0;
 
  // เมธอดสำหรับเปลี่ยนค่า star โดยใช้ชื่อ title เป็นตัวกำหนด
  void changeStar(String title, int newStar) {
    int index =
      listRatedrama().rateIm.indexWhere((item) => item['title'] == title);
    if (index != -1) {
      listRatedrama().rateIm[index]['star'] = newStar;
    }
  }

  @override
  Widget build(BuildContext context) {
    // listRatedrama().rateIm = rateIm;
    int indexIm = listRatedrama().rateIm
        .indexWhere((item) => item['title'] == widget.title
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              listAss_drama().imageAss[widget.index],
              width: 350,
              height: 350,
              fit: BoxFit.contain,
            ),
            Text(
              'Rate this drama:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => GestureDetector(
                  onTap: () {
                    print(
                        'Title-IMAGE: ${
                          listRatedrama().rateIm[indexIm]['title']
                        }'
                    );
                    print('INDEX-IMAGE: ${indexIm}');
                    setState(() {
                      _rating = index + 1;
                    });

                    // changeStar(widget.title, _rating);

                    print('getRate: ${_rating}');
                    // print('DramaRate: ${listRatedrama().rateIm[indexIm]['star']}');

                    // print('title star Rate: ${listRatedrama().rateIm[index]['star']}');

                    // RateDrama(Rtitle: widget.title,);
                  },
                  child: Icon(
                    index < _rating ? Icons.star : Icons.star_border,
                    // index < listRatedrama().rateIm[indexIm]['star'] ? Icons.star : Icons.star_border,
                    size: 40,
                    color: Colors.orange,
                  ),

                  // child: RateDrama(Rtitle: widget.title,),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'You rated this drama: $_rating stars',
              style: TextStyle(fontSize: 18),
            ),
            // StarRating(
            //   rating: listRatedrama().rateIm[indexIm]['star'],
            //   filledColor: Colors.orange,
            //   size: 40,
            // ),
          ],
        ),
      ),
    );
  }
}

*/

/*


import 'package:flutter/material.dart';
import 'package:myapp_project/actions/view_image_list.dart';
import 'package:myapp_project/item/arraylist.dart';
import 'package:myapp_project/pages/DramaDetailPage.dart';

class StarRating extends StatelessWidget {
  final int rating;
  final int maxRating;
  final IconData filledStar;
  final IconData unfilledStar;
  final Color? filledColor;
  final Color? unfilledColor;
  final double size;

  const StarRating({
    Key? key,
    required this.rating,
    this.maxRating = 5,
    this.filledStar = Icons.star,
    this.unfilledStar = Icons.star_border,
    this.filledColor,
    this.unfilledColor,
    this.size = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(maxRating, (index) {
        if (index < rating) {
          return Icon(
            filledStar,
            color: filledColor ?? Theme.of(context).primaryColor,
            size: size,
          );
        } else {
          return Icon(
            unfilledStar,
            color: unfilledColor ?? Colors.grey,
            size: size,
          );
        }
      }),
    );
  }
}


class setDramaRating {
  final String title;
  final int rating;

  setDramaRating({required this.title, required this.rating});

  void updateRating(String title, int newRating) {
    int index = listRatedrama().rateIm.indexWhere(
      (item) => item['title'] == title
    );
    if (index != -1) {
      setState(() {
        listRatedrama().rateIm[index]['star'] = newRating;
      });
    }
  }

}

void setState(Null Function() param0) {
}
*/


/*
class OpenAPIAnimationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.info),
      
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ShowAPIanimation(),
        ));
      },
    );
  }
}

*/