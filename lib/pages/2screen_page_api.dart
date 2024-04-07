import 'package:flutter/material.dart';
import 'package:myapp_project/actions/show_Aapi.dart';
import 'package:myapp_project/actions/show_Mapi.dart';

// import 'package:myapp_project/actions/listvideo.dart';
// import 'package:myapp_project/actions/video.dart';

class SelectPageAPI extends StatefulWidget {
  @override
  State<SelectPageAPI> createState() => _SelectPageAPIState();
}

class _SelectPageAPIState extends State<SelectPageAPI> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Animations and Movies',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 104, 168, 188),
      ),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ShowAPIanimation(),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ShowAPImovie(),
            ),
          ),
        ],
      ),
    );
  }
}
