
import 'package:flutter/material.dart';
import 'package:myapp_project/item/arraylist.dart';

class StarRating extends StatefulWidget {
  final int initialRating;
  final Function(int) onRatingChanged;

  final String title;

  const StarRating({
    // Key key,
    this.initialRating = 0,
    required this.onRatingChanged,
    required this.title
  }) : super();

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int _rating = 0;

  @override
  void initState() {
    super.initState();
    _rating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return IconButton(
          icon: Icon(
            index < _rating ? Icons.star : Icons.star_border,
            color: Color.fromARGB(255, 237, 142, 9),
            size: 40,
          ),
          onPressed: () {
            setState(() {
              _rating = index + 1;
              widget.onRatingChanged(_rating);
              listRatedrama().changeStar(widget.title, _rating);
            });
          },
        );
      }),
    );
  }
}