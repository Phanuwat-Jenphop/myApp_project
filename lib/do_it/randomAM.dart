import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp_project/item/data_api.dart';
import 'package:myapp_project/item/load_api.dart';

class RandomImageDialog extends StatefulWidget {
  @override
  State<RandomImageDialog> createState() => _RandomImageDialogState();
}

class _RandomImageDialogState extends State<RandomImageDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  Random random = Random();

                  return Expanded(
                    child: AlertDialog(
                      title: Text('Random Animation'),
                      backgroundColor: Color.fromARGB(255, 159, 242, 226),
                      content: FutureBuilder<List<Animations>>(
                        future: LoadApiAnimation.fetchAnimations(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            var animations = snapshot.data!;
                            int randomNumber =
                                random.nextInt(animations.length);
                            return Column(
                                children: [
                                  SizedBox(height: 20.0),
                                  Text(
                                    animations[randomNumber].title ?? '',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ), SizedBox(height: 10.0,),
                                  Image.network(
                                    animations[randomNumber].image ?? '',
                                    height: 300.0,
                                    width: 300.0,
                                  ),
                                ],
                              );
                          }
                        },
                      ),
                      actions: [],
                    ),
                  );
                },
              );
            },
            child: Icon(
              Icons.animation,
              size: 150.0,
              color: Color.fromARGB(255, 171, 244, 54),
              shadows: [Shadow(color: Color.fromARGB(255, 224, 20, 179), blurRadius: 20.0)],
            ),
            radius: 50.0,
            splashColor: Color.fromARGB(255, 180, 54, 35),
          ),
          SizedBox(width: 100),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  Random random = Random();

                  return Expanded(
                    child: AlertDialog(
                      title: Text('Random Movies'),
                      backgroundColor: Color.fromARGB(255, 216, 238, 106),
                      content: FutureBuilder<List<Movies>>(
                        future: LoadApiMovie.fetchMovies(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            var movies = snapshot.data!;
                            int randomNumber =
                                random.nextInt(movies.length);
                            return Column(
                              children: [
                                SizedBox(height: 20.0),
                                Text(
                                  movies[randomNumber].title ?? '',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ), SizedBox(height: 10.0,),
                                Image.network(
                                  movies[randomNumber].posterURL ?? '',
                                  width: 300.0,
                                  height: 300.0,
                                           
                                ),
                              ],
                            );
                          }
                        },
                      ),
                      actions: [],
                    ),
                  );
                },
              );
            },
            child: Icon(
              Icons.movie,size: 150.0,
              color: Color.fromARGB(255, 224, 90, 57),
              shadows: [Shadow(color: Color.fromARGB(255, 24, 114, 199), blurRadius: 20.0)],
            ),
            radius: 50.0,
            splashColor: Color.fromARGB(255, 136, 206, 38),
          ),
        ],
      ),
    );
  }
}

void showRandomImageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return RandomImageDialog();
    },
  );
}
