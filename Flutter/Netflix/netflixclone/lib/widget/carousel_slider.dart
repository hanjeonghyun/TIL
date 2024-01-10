import 'package:flutter/material.dart';
import 'package:netflixclone/model/model_movie.dart';


class CarouseImage extends StatefulWidget {
  const CarouseImage({Key? key, required this.movies}) : super(key: key);
  final List<Movie> movies;

  @override
  State<CarouseImage> createState() => _CarouseImageState();
}

class _CarouseImageState extends State<CarouseImage> {
  List<Movie>? movies;
  List<Widget>? images;
  List<String>? keywords;
  List<bool>? likes;
  final int _currentPage = 0;
  String? _currentKeyword;

  @override
  void initState() {
    super.initState();
    movies = widget.movies;
    images = movies!.map((m) => Image.asset('./images/${m.poster}')).toList();
    keywords = movies.map((m) => m.like).toList();
    _currentKeyword = keywords[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
          ),
          CarouselSlider()
        ],
      ),
    )
  }
}
