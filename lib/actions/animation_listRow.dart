import 'package:flutter/material.dart';
import 'package:myapp_project/item/arraylist.dart';
import 'package:myapp_project/item/data_api.dart';
import 'package:myapp_project/item/load_api.dart';
import 'package:myapp_project/pages/DramaDetailPage.dart';

class AnimationListRow extends StatefulWidget {
  @override
  State<AnimationListRow> createState() => _AnimationListRow();
}

class _AnimationListRow extends State<AnimationListRow> {
  List<Animations>? _anime;

  @override
  void initState() {
    super.initState();
    _fetchAnimations();
  }

  Future<void> _fetchAnimations() async {
    try {
      List<Animations> animation = await LoadApiAnimation.fetchAnimations();
      setState(() {
        _anime = animation;
      });
    } catch (e) {
      print('Error fetching animations: $e');
    }
  }

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 195.0,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 182, 225, 244),
          // borderRadius: BorderRadius.circular(10.0),
          border: Border.all(width: 1.0),
        ),
        child: _anime != null
            ? Row(
                children: _anime!.map((anime) {
                  Widget imageWidget;
                  if (anime.id == 1) {
                    imageWidget = Image.network(
                      'https://m.media-amazon.com/images/M/MV5BNTk2NzEyNTQtZTQ5MS00MjAyLTgzMDMtNDNkYTBkM2M2OTU3XkEyXkFqcGdeQXVyODUwNjEzMzg@._V1_FMjpg_UX1000_.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else if (anime.id == 3) {
                    imageWidget = Image.network(
                      'https://m.media-amazon.com/images/M/MV5BYmUxYWJkZGQtY2FmYS00YzM2LWJiMGQtODY5YTdjYmVkM2Y5XkEyXkFqcGdeQXVyNzQzNTI4MTM@._V1_.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else if (anime.id == 6) {
                    imageWidget = Image.network(
                      'https://m.media-amazon.com/images/M/MV5BNWQ1YWI0YjgtNWNmYy00NTY0LWJjZjgtMGFmMDU1OGM5Y2FiXkEyXkFqcGdeQXVyMTA3MzQ4MTg0._V1_FMjpg_UX1000_.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else if (anime.id == 14) {
                    imageWidget = Image.network(
                      'https://m.media-amazon.com/images/M/MV5BZjI4NjdjM2QtMGUzNy00YmY2LWFhZDUtMWRmMWUxZWJmZDFlXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_FMjpg_UX1000_.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else if (anime.id == 16) {
                    imageWidget = Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMmZjMjU1YmMtY2QwOC00ZjI1LWJlMjEtYTYxOWU1ZGIzOGUwXkEyXkFqcGdeQXVyMTA0MTM5NjI2._V1_FMjpg_UX1000_.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else if (anime.id == 22) {
                    imageWidget = Image.network(
                      'https://m.media-amazon.com/images/I/61tLzsoFDkL._AC_UF894,1000_QL80_.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else {
                    if (anime.image != null && anime.image!.isNotEmpty) {
                      imageWidget = Image.network(
                        anime.image!,
                        width: 150,
                      height: 150,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.error,
                              color: Color.fromARGB(255, 54, 136, 244));
                        },
                      );
                    } else {
                      // Provide a default image if anime.image is null or empty
                      imageWidget = Image.network(
                        'YOUR_DEFAULT_IMAGE_URL_HERE',
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
                          //   anime.image ?? 'image',
                          //   width: 150,
                          //   height: 150,
                          // ),
                          imageWidget,
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            anime.title.toString(),
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
