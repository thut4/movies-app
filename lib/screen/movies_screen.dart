import 'package:flutter/material.dart';
import 'package:movie_app/model/movies.dart';
import 'package:movie_app/screen/movies_detail.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({
    Key? key,
    required this.movieData,
  }) : super(key: key);

  final List<Movie> movieData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
      child: ListView.builder(
        itemCount: movieData.length,
        itemBuilder: (BuildContext context, int index) {
          Movie movie = movieData[index];
          return Card(
            elevation: 5.0,
            shadowColor: Colors.black26,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ),
            child: ListTile(
              title: Text(
                movie.title!,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).iconTheme.color,
                    fontSize: 16.0,
                    fontFamily: 'OldStandard'),
              ),
              subtitle: Text(movie.type!),
              leading: Image.network(movie.imageUrl!),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MovieDetail(movie),
                    ));
              },
            ),
          );
        },
      ),
    );
  }
}
