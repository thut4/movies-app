import 'package:flutter/material.dart';
import 'package:movie_app/model/movies.dart';
import 'package:movie_app/screen/movies_screen.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
    required this.movieData,
  }) : super(key: key);

  final List<Movie> movieData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Movies to Watch',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        elevation: 2.0,
        centerTitle: true,
      ),
      body: MovieScreen(movieData: movieData),
    );
  }
}
