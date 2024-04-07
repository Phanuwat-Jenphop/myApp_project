import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:myapp_project/item/data_api.dart';
import 'package:myapp_project/item/load_api.dart';
import 'package:myapp_project/pages/page_API/detailScreenA.dart';

class ShowAPIanimation extends StatefulWidget {
  const ShowAPIanimation({super.key});
  
  @override
  State<ShowAPIanimation> createState() => _AnimationState();
}

class _AnimationState extends State<ShowAPIanimation> {
  List<Animations>? _anime;
  
    // List<Animations>? _animation;
  
  @override
  void initState() {
    super.initState();
    _fetchAnimations();
  }
 
  Future<void> _fetchAnimations() async {
    try {
      List<Animations> animations = await LoadApiAnimation.fetchAnimations();
      setState(() {
        _anime = animations;
      });
    } catch (e) {
      print('Error fetching animations: $e');
    }
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      
      children: [
        // Remove ElevatedButton
        Expanded(
          child: _anime == null
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: _anime!.length,
                  itemBuilder: (context, index) {
                    var anime = _anime![index];
                    // image 1 3 6 14 16 22 error
                    Widget imageWidget;
                    if (anime.id == 1) {
                      imageWidget = Image.network(
                        'https://m.media-amazon.com/images/M/MV5BNTk2NzEyNTQtZTQ5MS00MjAyLTgzMDMtNDNkYTBkM2M2OTU3XkEyXkFqcGdeQXVyODUwNjEzMzg@._V1_FMjpg_UX1000_.jpg',
                        width: 100,
                        height: 100,
                      );
                    } else if (anime.id == 3) {
                      imageWidget = Image.network(
                        'https://m.media-amazon.com/images/M/MV5BYmUxYWJkZGQtY2FmYS00YzM2LWJiMGQtODY5YTdjYmVkM2Y5XkEyXkFqcGdeQXVyNzQzNTI4MTM@._V1_.jpg',
                        width: 100,
                        height: 100,
                      );
                    } else if (anime.id == 6) {
                      imageWidget = Image.network(
                        'https://m.media-amazon.com/images/M/MV5BNWQ1YWI0YjgtNWNmYy00NTY0LWJjZjgtMGFmMDU1OGM5Y2FiXkEyXkFqcGdeQXVyMTA3MzQ4MTg0._V1_FMjpg_UX1000_.jpg',
                        width: 100,
                        height: 100,
                      );
                    } else if (anime.id == 14) {
                      imageWidget = Image.network(
                        'https://m.media-amazon.com/images/M/MV5BZjI4NjdjM2QtMGUzNy00YmY2LWFhZDUtMWRmMWUxZWJmZDFlXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_FMjpg_UX1000_.jpg',
                        width: 100,
                        height: 100,
                      );
                    } else if (anime.id == 16) {
                      imageWidget = Image.network(
                        'https://m.media-amazon.com/images/M/MV5BMmZjMjU1YmMtY2QwOC00ZjI1LWJlMjEtYTYxOWU1ZGIzOGUwXkEyXkFqcGdeQXVyMTA0MTM5NjI2._V1_FMjpg_UX1000_.jpg',
                        width: 100,
                        height: 100,
                      );
                    } else if (anime.id == 22) {
                      imageWidget = Image.network(
                        'https://m.media-amazon.com/images/I/61tLzsoFDkL._AC_UF894,1000_QL80_.jpg',
                        width: 100,
                        height: 100,
                      );
                    } else {
                      imageWidget = Image.network(
                        anime.image ?? '',
                        width: 100,
                        height: 100,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.error,
                              color: Color.fromARGB(255, 54, 136, 244));
                        },
                      );
                    }

                    return ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailScreenAnimation(anime: anime),
                        ));
                      },
                      // leading: Hero(
                      //   tag: imageWidget,
                      // child: Image.network(
                      //   anime.image ?? '',
                      //   width: 100,
                      //   height: 100,
                      //   errorBuilder: (context, error, stackTrace) {
                      //     return Icon(Icons.error,
                      //         color: Color.fromARGB(255, 54, 136, 244));
                      //   },
                      // ),
                      // ),
                      leading: imageWidget,
                      title: Text(anime.title ?? ''),
                      subtitle: Text("Animation ID: ${anime.id.toString()}"),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
