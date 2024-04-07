import 'package:flutter/material.dart';
import 'package:myapp_project/item/arraylist.dart';
import 'package:myapp_project/item/data_api.dart';
import 'package:myapp_project/item/load_api.dart';
import 'package:myapp_project/pages/DramaDetailPage.dart';

class MoviesListRow extends StatefulWidget {
  @override
  State<MoviesListRow> createState() => _moviesListRow();
}

class _moviesListRow extends State<MoviesListRow> {
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
    var length = 0;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 195.0,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 182, 225, 244),
          // borderRadius: BorderRadius.circular(10.0),
          border: Border.all(width: 1.0),
        ),
        child: _movie != null
            ? Row(
                children: _movie!.map((movie) {
                  Widget posterWidget;
                  if (movie.id == 28) {
                    posterWidget = Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/8/89/Repulsion_%281965_film_poster%29.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else if (movie.id == 34) {
                    posterWidget = Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMTcyNTY0Njk0NV5BMl5BanBnXkFtZTcwMjM1ODMyNA@@._V1_QL75_UX500_CR0,47,500,281_.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else if (movie.id == 53) {
                    posterWidget = Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMjJkMDZhYzItZTFhMi00ZGI4LThlNTAtZDNlYmEwNjFkNDYzXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else if (movie.id == 57) {
                    posterWidget = Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMTcxMDc1NjcyNl5BMl5BanBnXkFtZTgwNDU0NDYxMzI@._V1_.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else if (movie.id == 61) {
                    posterWidget = Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/c/ce/Double_Indemnity_%281944_poster%29.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else if (movie.id == 62) {
                    posterWidget = Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMTU1NDM0OTI1OF5BMl5BanBnXkFtZTYwOTA2NjM5._V1_.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else if (movie.id == 64) {
                    posterWidget = Image.network(
                      'https://m.media-amazon.com/images/I/612h-jwI+EL._AC_UF1000,1000_QL80_.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else if (movie.id == 73) {
                    posterWidget = Image.network(
                      'https://m.media-amazon.com/images/M/MV5BYTc0ZTQxY2EtNTUyYS00MTM5LWIyOTQtYzQ0YTBiNzc2YjE0XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else if (movie.id == 77) {
                    posterWidget = Image.network(
                      'https://m.media-amazon.com/images/M/MV5BYmQyNTA1ZGItNjZjMi00NzFlLWEzMWEtNWMwN2Q2MjJhYzEyXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_FMjpg_UX1000_.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else {
                    if (movie.posterURL != null &&
                        movie.posterURL!.isNotEmpty) {
                      posterWidget = Image.network(
                        movie.posterURL!,
                        width: 150,
                        height: 150,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.error,
                              color: Color.fromARGB(255, 54, 136, 244));
                        },
                      );
                    } else {
                      // Provide a default image if anime.image is null or empty
                      posterWidget = Image.network(
                        'YOUR_DEFAULT_IMAGE_URL_HERE',
                        width: 150,
                        height: 150,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.error,
                              color: Color.fromARGB(255, 54, 136, 244));
                        },
                      );
                    }
                  }

                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => DramaDetailPage(movie: movie),
                        //   ),
                        // );
                      },
                      child: Column(
                        children: [
                          // Image.network(
                          //   movie.posterURL ?? image,
                          //   width: 150,
                          //   height: 150,
                          // ),
                          posterWidget,
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            movie.title.toString(),
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
