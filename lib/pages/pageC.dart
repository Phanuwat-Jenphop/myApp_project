import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:myapp_project/actions/animation_listRow.dart';
import 'package:myapp_project/actions/drama_listRow.dart';
import 'package:myapp_project/actions/movie_listRow.dart';
import 'package:myapp_project/item/arraylist.dart';

class pageCenter extends StatefulWidget {
  const pageCenter({super.key});

  @override
  State<pageCenter> createState() => _CenterState();
}

class _CenterState extends State<pageCenter> {
  @override
  Widget build(BuildContext context) {
    

    Widget _buildDramaList() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Dramas List',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Image.asset(
              //  'images/animes/adora.jpg',
              //   width: 50.0,
              //   height: 50.0,
              //   fit: BoxFit.cover,
              // ),
            ],
          ), 
          SizedBox(height: 10.0),
          DramaList(),
          InkWell(
            splashColor: Colors.yellow,
            highlightColor: Colors.red,
            onTap: () {
              setState(() {});
              listRatedrama().toPrint();
            },
            child: Icon(Icons.star_border_purple500, size: 30),
          ),
        ],
      );
    }

    Widget _buildMovieList() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Movies List',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          MoviesListRow(),
          InkWell(
            splashColor: Colors.yellow,
            highlightColor: Colors.red,
            onTap: () {
              setState(() {});
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog();
                },
              );
            },
            child: Icon(Icons.star_border_purple500, size: 30),
          ),
        ],
      );
    }

    Widget _buildAnimationList() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Animations List',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          AnimationListRow(),
          InkWell(
            splashColor: Colors.yellow,
            highlightColor: Colors.red,
            onTap: () {
              setState(() {});
            },
            child: Icon(Icons.star_border_purple500, size: 30),
          ),
        ],
      );
    }

    return ListView(
      padding: EdgeInsets.all(20.0),
      children: [
        _buildDramaList(),
        SizedBox(height: 30.0),
        _buildMovieList(),
        SizedBox(height: 30.0),
        _buildAnimationList(),
        SizedBox(height: 30.0),
        
      ],
    );
  }
}


/*
// return Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Icon(Icons.accessibility_outlined,
    //       color: Color.fromARGB(255, 198, 243, 33),
    //       size: 100.0,
    //     ),
    //   ],
    // );

    // return Column(
    //   children: [
    //     Row(
    //       children: [
    //         SizedBox(width:20.0),
    //         Text(
    //           'Drama List',
    //           style: TextStyle(
    //             fontSize: 20.0,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //       ],
    //     ),
    //     DramaList(),
    //     SizedBox(height: 30.0,),
    //   ],
    // );
*/