import 'package:flutter/material.dart';
import 'package:movie_app/model/movies.dart';
import 'package:movie_app/screen/movies_screen.dart';
import 'package:movie_app/widget/chgn_btn.dart';

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
        backgroundColor: Colors.transparent,
        iconTheme: Theme.of(context).iconTheme,
        leading: const Icon(Icons.menu),
        title: const Text(
          'Top Movies to Watch',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        elevation: 1.0,
        centerTitle: true,
        actions: const [ChgnBtn()],
      ),
      body: MovieScreen(movieData: movieData),
    );
  }
}
