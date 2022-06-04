import 'package:flutter/material.dart';
import 'package:movie_app/screen/movies_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Top Movies to Watch',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MovieList(),
    );
  }
}
