import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:myapp_project/item/data_api.dart';

// _LoadApiState
class LoadApiAnimation {

  // List<Animations>? _animation;

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


class LoadApiMovie {

  // List<Movies>? _movie;

  static Future<List<Movies>> fetchMovies() async {
    try {
      var dio = Dio(BaseOptions(responseType: ResponseType.plain));
      var response = await dio.get('https://api.sampleapis.com/movies/drama');

      if (response.statusCode == 200) {
        var list = jsonDecode(response.data.toString()) as List<dynamic>;
        return list.map((item) => Movies.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load movies');
      }
    } catch (e) {
      throw Exception('Failed to load movies: $e');
    }
  }

}

/*
 Future<void> fetchMovies() async {
    var dio = Dio(BaseOptions(responseType: ResponseType.plain));
    var response =
        await dio.get('https://api.sampleapis.com/movies/drama');
    if (response.statusCode == 200) {
      var list = jsonDecode(response.data.toString());
      setState(() {
        _movie =
            list.map<Animations>((item) => Animations.fromJson(item)).toList();
      });
    } else {
      // Handle error
      print('Failed to fetch animations');
    }
  }
*/