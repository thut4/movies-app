import 'package:flutter/material.dart';
import 'package:movie_app/model/movies.dart';

class MovieDetail extends StatelessWidget {
  late final Movie movie;
  MovieDetail(this.movie);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          movie.title!,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFFFFD700)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                movie.imageUrl!,
                height: 500,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                movie.description!,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 10.0),
                    decoration: const BoxDecoration(
                      color: Colors.lime,
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                    child: Text(
                      'IMDB - ' + movie.rating.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
