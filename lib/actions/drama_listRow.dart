import 'package:flutter/material.dart';
import 'package:myapp_project/item/arraylist.dart';
import 'package:myapp_project/pages/DramaDetailPage.dart';

class DramaList extends StatefulWidget {
  @override
  State<DramaList> createState() => _DramaListState();
}

class _DramaListState extends State<DramaList> {
  @override
  Widget build(BuildContext context) {
  
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 195.0,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 182, 225, 244),
          // borderRadius: BorderRadius.circular(10.0),
          border: Border.all(width: 1.0),
        ),
        child: Column(
          children: [
            Row(
                children: List.generate(
                  // imageAss.length,
                  listAss_drama().dataIm.length,
                  (index) => Padding(
                    padding: EdgeInsets.all(8.0),
            
                    child: GestureDetector(
                      
                    onTap: () {
                      // สร้าง Navigator.push เพื่อเปิดหน้าใหม่
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) 
                          => DramaDetailPage(
                            title: listAss_drama().dataIm[index]['title'],
                            index: listAss_drama().dataIm.indexWhere((item) 
                              => item['title'] 
                              == listAss_drama().dataIm[index]['title'],
                            ),
                            // imagesAss: imageAss[index],
                          ),
                        ),
                      );
                    },
            
                    child: Column(
                      children: [
                        Image.asset(
                          // imageAss[index],
                          listAss_drama().dataIm[index]['images'],
                          width: 150,
                          height: 150,
                          // fit: BoxFit.contain,
                          
                        ),
                        // Text(titleimage[index]),
                        SizedBox(height: 5.0,),
                        Text(
                          listAss_drama().dataIm[index]['title'],
                          style: TextStyle(
                            // fontSize: 20.0,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                      
                    ),
                  ),
                  
                ),
              ), 
            ),

          ],
        ),
        
      ),
       
    );
  }
}
