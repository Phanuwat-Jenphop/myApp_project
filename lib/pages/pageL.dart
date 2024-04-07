import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:myapp_project/nonUse/view_image_list.dart';
import 'package:myapp_project/do_it/randomAM.dart';

class pageLeft extends StatefulWidget {
  const pageLeft({super.key});

  @override
  State<pageLeft> createState() => _AlbumState();
}

class _AlbumState extends State<pageLeft> {

//   int itemCount = 0;
//   List<String> _photo = [
//     'images/beautifulGirls/lusi01.jpeg',
//     'images/beautifulGirls/lusi02.jpeg',
//     'images/beautifulGirls/lusi03.jpeg',
//     'images/beautifulGirls/chaoyue01.jpeg',
//     'images/beautifulGirls/chaoyue02.jpeg',
//     'images/beautifulGirls/chaoyue03.jpeg',
//   ];

  @override
  Widget build(BuildContext context) {
    // itemCount = _photo.length;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Animations&Movies'),
          backgroundColor: Color.fromARGB(255, 254, 254, 254),
          centerTitle: true,
        ),
        // body: ImageListView(),
        backgroundColor: Color.fromARGB(255, 159, 226, 251),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RandomImageDialog(),
          ],
        ),
      ),

    );
  }
}
