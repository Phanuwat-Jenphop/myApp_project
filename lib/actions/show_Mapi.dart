import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:myapp_project/item/data_api.dart';
import 'package:myapp_project/item/load_api.dart';
import 'package:myapp_project/pages/page_API/detailScreenM.dart';
// import 'package:myapp_project/pages/detailScreen.dart';

class ShowAPImovie extends StatefulWidget {
  const ShowAPImovie({super.key});

  @override
  State<ShowAPImovie> createState() => _MovieState();
}

class _MovieState extends State<ShowAPImovie> {
  List<Movies>? _movie;

  // List<Animations>? _animation;

  @override
  void initState() {
    super.initState();
    _fetchMovies();
  }

  Future<void> _fetchMovies() async {
    try {
      List<Movies> movies = await LoadApiMovie.fetchMovies();
      setState(() {
        _movie = movies;
      });
    } catch (e) {
      print('Error fetching movies: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Remove ElevatedButton
        Expanded(
          child: _movie == null
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: _movie!.length,
                  itemBuilder: (context, index) {
                    var movie = _movie![index];
                    // image 28 34 53 57 61 62 64 73 77  error
                    Widget posterWidget;
                    if (movie.id == 28) {
                      posterWidget = Image.network(
                        'https://upload.wikimedia.org/wikipedia/en/8/89/Repulsion_%281965_film_poster%29.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.contain,
                      );
                    } else if (movie.id == 34) {
                      posterWidget = Image.network(
                        'https://m.media-amazon.com/images/M/MV5BMTcyNTY0Njk0NV5BMl5BanBnXkFtZTcwMjM1ODMyNA@@._V1_QL75_UX500_CR0,47,500,281_.jpg',
                        width: 100,
                        height: 100,
                      );
                    } else if (movie.id == 53) {
                      posterWidget = Image.network(
                        'https://m.media-amazon.com/images/M/MV5BMjJkMDZhYzItZTFhMi00ZGI4LThlNTAtZDNlYmEwNjFkNDYzXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg',
                        width: 100,
                        height: 100,
                      );
                    } else if (movie.id == 57) {
                      posterWidget = Image.network(
                        'https://m.media-amazon.com/images/M/MV5BMTcxMDc1NjcyNl5BMl5BanBnXkFtZTgwNDU0NDYxMzI@._V1_.jpg',
                        width: 100,
                        height: 100,
                      );
                    } else if (movie.id == 61) {
                      posterWidget = Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/c/ce/Double_Indemnity_%281944_poster%29.jpg',
                        width: 100,
                        height: 100,
                      );
                    } else if (movie.id == 62) {
                      posterWidget = Image.network(
                        'https://m.media-amazon.com/images/M/MV5BMTU1NDM0OTI1OF5BMl5BanBnXkFtZTYwOTA2NjM5._V1_.jpg',
                        width: 100,
                        height: 100,
                      );
                    } else if (movie.id == 64) {
                      posterWidget = Image.network(
                        'https://m.media-amazon.com/images/I/612h-jwI+EL._AC_UF1000,1000_QL80_.jpg',
                        width: 100,
                        height: 100,
                      );
                    } else if (movie.id == 73) {
                      posterWidget = Image.network(
                        'https://m.media-amazon.com/images/M/MV5BYTc0ZTQxY2EtNTUyYS00MTM5LWIyOTQtYzQ0YTBiNzc2YjE0XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg',
                        width: 100,
                        height: 100,
                      );
                    } else if (movie.id == 77) {
                      posterWidget = Image.network(
                        'https://m.media-amazon.com/images/M/MV5BYmQyNTA1ZGItNjZjMi00NzFlLWEzMWEtNWMwN2Q2MjJhYzEyXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_FMjpg_UX1000_.jpg',
                        width: 100,
                        height: 100,
                      );
                    } else {
                      posterWidget = Image.network(
                        movie.posterURL ?? '',
                        width: 100,
                        height: 100,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.error, color: Color.fromARGB(255, 54, 136, 244)
                          );
                        }, 
                      );
                    }

                    return ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              DetailScreenMovies(movie: movie,),
                        ));
                      },
                      // leading: Hero(
                      //   tag: movie.title.toString(),
                      //   child: Image.network(
                      //     movie.posterURL ?? '',
                      //     width: 100,
                      //     height: 100,
                      //     errorBuilder: (context, error, stackTrace) {
                      //       return Icon(Icons.error,
                      //           color: Color.fromARGB(255, 54, 136, 244));
                      //     },
                      //   ),
                      // ),
                      leading: posterWidget,
                      title: Text(movie.title ?? ''),
                      subtitle: Text("Movies ID: ${movie.id.toString()}"),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
