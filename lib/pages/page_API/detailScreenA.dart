
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:myapp_project/item/data_api.dart';

class DetailScreenAnimation extends StatelessWidget {
  final Animations anime;

  const DetailScreenAnimation({Key? key, required this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconData> iconsList = [
      Icons.movie,
      Icons.local_movies,
      Icons.movie_creation,
      Icons.movie_creation_outlined,
      Icons.local_movies_outlined,
      Icons.video_camera_back_outlined,
      Icons.movie_edit,
      Icons.movie_filter,
      Icons.movie_filter_outlined,
      Icons.slow_motion_video_sharp,
      Icons.movie_filter_sharp,
      Icons.movie_outlined,
      Icons.missed_video_call_outlined,
      Icons.movie_sharp,
      
      // เพิ่ม icons ต่าง ๆ ต่อไปตามต้องการ
    ];
    Random randomIcon = Random();
    IconData getRandomIcon() {
      int randomNumber = randomIcon.nextInt(iconsList.length);
      return iconsList[randomNumber];
    }
    // image 1 3 6 14 16 22 error
    Widget imageWidget;
    if (anime.id == 1) {
      imageWidget = Image.network(
        'https://m.media-amazon.com/images/M/MV5BNTk2NzEyNTQtZTQ5MS00MjAyLTgzMDMtNDNkYTBkM2M2OTU3XkEyXkFqcGdeQXVyODUwNjEzMzg@._V1_FMjpg_UX1000_.jpg',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else if (anime.id == 3) {
      imageWidget = Image.network(
        'https://m.media-amazon.com/images/M/MV5BYmUxYWJkZGQtY2FmYS00YzM2LWJiMGQtODY5YTdjYmVkM2Y5XkEyXkFqcGdeQXVyNzQzNTI4MTM@._V1_.jpg',
       width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else if (anime.id == 6) {
      imageWidget = Image.network(
        'https://m.media-amazon.com/images/M/MV5BNWQ1YWI0YjgtNWNmYy00NTY0LWJjZjgtMGFmMDU1OGM5Y2FiXkEyXkFqcGdeQXVyMTA3MzQ4MTg0._V1_FMjpg_UX1000_.jpg',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else if (anime.id == 14) {
      imageWidget = Image.network(
        'https://m.media-amazon.com/images/M/MV5BZjI4NjdjM2QtMGUzNy00YmY2LWFhZDUtMWRmMWUxZWJmZDFlXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_FMjpg_UX1000_.jpg',
       width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else if (anime.id == 16) {
      imageWidget = Image.network(
        'https://m.media-amazon.com/images/M/MV5BMmZjMjU1YmMtY2QwOC00ZjI1LWJlMjEtYTYxOWU1ZGIzOGUwXkEyXkFqcGdeQXVyMTA0MTM5NjI2._V1_FMjpg_UX1000_.jpg',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else if (anime.id == 22) {
      imageWidget = Image.network(
        'https://m.media-amazon.com/images/I/61tLzsoFDkL._AC_UF894,1000_QL80_.jpg',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else {
      imageWidget = Image.network(
        anime.image ?? '',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          anime.title ?? '',
          style: TextStyle(
            color: Color.fromARGB(255, 64, 66, 68),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 161, 93, 93),
      ),
      backgroundColor: Color.fromARGB(255, 213, 149, 149),
      // SizedBox(height: 20.0),
      body: Column(
        children: [
          Row(
            children: [
              // Hero(
              //   tag: anime.image ?? '',
              //   child: Image.network(
              //     width: 500,
              //     height: 400,
              //     anime.image ?? '',
              //     errorBuilder: (context, error, stackTrace) {
              //       return Icon(
              //         Icons.error,
              //         color: Color.fromARGB(255, 54, 136, 244),
              //       );
              //     },
              //     fit: BoxFit.contain, // Adjust this based on your requirement
              //   ),
              // ),
              imageWidget,
              SizedBox(width: 20.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'On Years: ' + anime.year.toString() ?? '',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Rating: ' + anime.rating.toString() ?? '',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Runtime: ' + anime.runtime_in_minutes.toString() ?? '',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Episodes: ' + anime.episodes.toString() ?? '',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'ID: ' + anime.id.toString() ?? '',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(),
              Icon(
                getRandomIcon(),
                color: Color.fromARGB(255, 132, 104, 122),
                size: 150.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
/*
 final String? title;
  final int? year;
  final String? rating;
  // final String? creator;
  // final String? genre;
  final int? runtime_in_minutes;
  final int? episodes;
  final String? image;
  final int? id;
*/