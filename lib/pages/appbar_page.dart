
import 'package:flutter/material.dart';


class pageAppbar extends StatelessWidget  {
  
  final String imageUrl;

  pageAppbar({super.key, required this.imageUrl});
  
  @override
  Widget build(BuildContext context) {

    return AppBar(
          // centerTitle: true,
          backgroundColor: Color.fromARGB(210, 28, 9, 65),
          elevation: 0.0,
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,            
            children: <Widget>[    
              Text(
                '    My-App    ',
                style: TextStyle(
                  color: Color.fromARGB(255, 127, 197, 230),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            GestureDetector(
            onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  
                  title: Text("My Profile"),
                  content: Container(
                    height: 320,
                    width: 200,
                    child: Column(
                      children: [
                        Image.network(imageUrl, 
                        width: 150, height: 150),
                        SizedBox(height: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: Phanuwat Jenphop"),
                            SizedBox(height: 10.0),
                            Text("ID: 640710553 "),
                            SizedBox(height: 10.0),
                            Text("Computer Science (CS) "),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Icon(Icons.settings_power_rounded, size: 50.0, color:  Color.fromARGB(255, 22, 199, 231),),
                      ]
                    ),
                  ),
                  
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close"),
                    ),
                  ],
                );
              },
            );
          },
          child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [        
            Image.network(
              imageUrl, // URL ของรูปภาพจากอินเทอร์เน็ต
              width: 40,
              height: 40,
              fit: BoxFit.fill,

            ),
            SizedBox(width: 20.0),
          ],            
        ),
        ),
        
      ],    
    );
  }
  
 
}
