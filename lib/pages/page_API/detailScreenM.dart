import 'dart:math';
import 'package:flutter/material.dart';
import 'package:myapp_project/item/data_api.dart';

class DetailScreenMovies extends StatelessWidget {
  final Movies movie;

  const DetailScreenMovies({Key? key, required this.movie}) : super(key: key);

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

    // image 28 34 53 57 61 62 64 73 77  error
    Widget imageWidget;
    if (movie.id == 28) {
      imageWidget = Image.network(
        'https://upload.wikimedia.org/wikipedia/en/8/89/Repulsion_%281965_film_poster%29.jpg',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else if (movie.id == 34) {
      imageWidget = Image.network(
        'https://m.media-amazon.com/images/M/MV5BMTcyNTY0Njk0NV5BMl5BanBnXkFtZTcwMjM1ODMyNA@@._V1_QL75_UX500_CR0,47,500,281_.jpg',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else if (movie.id == 53) {
      imageWidget = Image.network(
        'https://m.media-amazon.com/images/M/MV5BMjJkMDZhYzItZTFhMi00ZGI4LThlNTAtZDNlYmEwNjFkNDYzXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else if (movie.id == 57) {
      imageWidget = Image.network(
        'https://m.media-amazon.com/images/M/MV5BMTcxMDc1NjcyNl5BMl5BanBnXkFtZTgwNDU0NDYxMzI@._V1_.jpg',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else if (movie.id == 61) {
      imageWidget = Image.network(
        'https://upload.wikimedia.org/wikipedia/commons/c/ce/Double_Indemnity_%281944_poster%29.jpg',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else if (movie.id == 62) {
      imageWidget = Image.network(
        'https://m.media-amazon.com/images/M/MV5BMTU1NDM0OTI1OF5BMl5BanBnXkFtZTYwOTA2NjM5._V1_.jpg',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else if (movie.id == 64) {
      imageWidget = Image.network(
        'https://m.media-amazon.com/images/I/612h-jwI+EL._AC_UF1000,1000_QL80_.jpg',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else if (movie.id == 73) {
      imageWidget = Image.network(
        'https://m.media-amazon.com/images/M/MV5BYTc0ZTQxY2EtNTUyYS00MTM5LWIyOTQtYzQ0YTBiNzc2YjE0XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else if (movie.id == 77) {
      imageWidget = Image.network(
        'https://m.media-amazon.com/images/M/MV5BYmQyNTA1ZGItNjZjMi00NzFlLWEzMWEtNWMwN2Q2MjJhYzEyXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_FMjpg_UX1000_.jpg',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244));
        },
      );
    } else {
      imageWidget = Image.network(
        movie.posterURL ?? '',
        width: 500,
        height: 400,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, color: Color.fromARGB(255, 246, 183, 47));
        },
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          movie.title ?? '',
          style: TextStyle(
            color: Color.fromARGB(255, 64, 66, 68),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 158, 204, 94),
      ),
      backgroundColor: Color.fromARGB(255, 157, 241, 188),
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
                    'Movie ID: ' + movie.id.toString() ?? '',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'IMBD ID: ${movie.imdbId ?? 'N/A'}',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
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
                color: Color.fromARGB(255, 71, 191, 191),
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
 final int? id;
  final String? title;
  final String? posterURL;
  final String? imbdID;
*/