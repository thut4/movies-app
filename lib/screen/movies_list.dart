import 'package:flutter/material.dart';
import 'package:movie_app/model/movies.dart';
import 'package:movie_app/screen/app_bar.dart';

class MovieList extends StatelessWidget {
  List<Movie> movieData = [
    Movie(
        title: 'Game of Thrones',
        description:
            'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.',
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BYTRiNDQwYzAtMzVlZS00NTI5LWJjYjUtMzkwNTUzMWMxZTllXkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_.jpg',
        type: 'Drama',
        rating: 9.2),
    Movie(
        title: 'Top Gun',
        description:
            'After more than thirty years of service as one of the Navy\'s top aviators, Pete Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him.',
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BMmIwZDMyYWUtNTU0ZS00ODJhLTg2ZmEtMTk5ZmYzODcxODYxXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_FMjpg_UX1000_.jpg',
        type: 'Action/Adventure',
        rating: 8.7),
    Movie(
        title: 'Stranger Things',
        description:
            'When a young boy disappears, his mother, a police chief and his friends must confront terrifying supernatural forces in order to get him back.',
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BODZlYjQ4NzYtZTg1MC00NGY4LTg4NjQtNGE3ZjRkMjk3YjMyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg',
        type: 'Drama',
        rating: 8.7),
    Movie(
        title: 'Jurassic World Dominion',
        description:
            'Four years after the destruction of Isla Nublar, dinosaurs now live--and hunt--alongside humans all over the world. This fragile balance will reshape the future and determine, once and for all, whether human beings are to remain the apex predators on a planet they now share with history\'s most fearsome creatures in a new Era.',
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BZmQ1NDZjMTktMjFhZC00ZGY5LWEyMTMtNDhkOWM4NmMyZjI0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg',
        type: 'Sci-fi',
        rating: 6.5),
    Movie(
        title: 'Doctor Strange in the Multiverse of Madness',
        description:
            'Doctor Strange teams up with a mysterious teenage girl from his dreams who can travel across multiverses, to battle multiple threats, including other-universe versions of himself, which threaten to wipe out millions across the multiverse. They seek help from Wanda the Scarlet Witch, Wong and others.',
        imageUrl:
            'https://terrigen-cdn-dev.marvel.com/content/prod/1x/doctorstrangeinthemultiverseofmadness_lob_crd_02_3.jpg',
        type: 'Action/Adventure',
        rating: 7.3),
    Movie(
        title: 'Fantastic Beasts: The Secrets of Dumbledore',
        description:
            'Professor Albus Dumbledore knows the powerful, dark wizard Gellert Grindelwald is moving to seize control of the wizarding world. Unable to stop him alone, he entrusts magizoologist Newt Scamander to lead an intrepid team of wizards and witches.',
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BZGQ1NjQyNDMtNzFlZS00ZGIzLTliMWUtNGJkMGMzNTBjNDg0XkEyXkFqcGdeQXVyMTE1NDI5MDQx._V1_.jpg',
        type: 'Fantasy/Adventure',
        rating: 6.3),
    Movie(
        title: 'Spiderman-No way home',
        description:
            'With Spider-Man\'s identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero. When Peter asks for help from Doctor Strange, the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.',
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_FMjpg_UX1000_.jpg',
        type: 'Action/Adventure',
        rating: 8.3),
    Movie(
      title: 'The Batman',
      description:
          'Batman ventures into Gotham City\'s underworld when a sadistic killer leaves behind a trail of cryptic clues. As the evidence begins to lead closer to home and the scale of the perpetrator\'s plans become clear, he must forge new relationships, unmask the culprit and bring justice to the abuse of power and corruption that has long plagued the metropolis.',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BMDdmMTBiNTYtMDIzNi00NGVlLWIzMDYtZTk3MTQ3NGQxZGEwXkEyXkFqcGdeQXVyMzMwOTU5MDk@._V1_.jpg',
      type: 'Action',
      rating: 7.9,
    ),
    Movie(
      title: 'Obi-Wan Kenobi',
      description:
          'Jedi Master Obi-Wan Kenobi watches over young Luke Skywalker and evades the Empire\'s elite Jedi hunters during his exile on the desert planet Tatooine.',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BOTAxOTlmOTAtMjA0Yy00YjVjLWE3OTQtYjAzMWMxOTAwZTY1XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg',
      type: 'Sci-fi',
      rating: 7.8,
    ),
    Movie(
        title: 'Everything Everywhere All at Once',
        description:
            'An aging Chinese immigrant is swept up in an insane adventure, where she alone can save the world by exploring other universes connecting with the lives she could have led.  ',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/en/1/1e/Everything_Everywhere_All_at_Once.jpg',
        type: 'Sci-fi',
        rating: 8.4),
    Movie(
        title: 'Uncharted',
        description:
            'Treasure hunter Victor "Sully" Sullivan recruits street-smart Nathan Drake to help him recover a 500-year-old lost fortune amassed by explorer Ferdinand Magellan. What starts out as a heist soon becomes a globe-trotting, white-knuckle race to reach the prize before the ruthless Santiago Moncada can … ',
        imageUrl:
            'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS148VQcCwjB4BgkrjdLPF7ln5At6Z6xvLMdS8YSUXoksYExx4R',
        type: ' Adventure/Action',
        rating: 6.4),
    Movie(
        title: 'The Bad Guys',
        description:
            'After a lifetime of legendary heists, notorious criminals Mr. Wolf, Mr. Snake, Mr. Piranha, Mr. Shark and Ms. Tarantula are finally caught. To avoid a prison sentence, the animal outlaws must pull off their most challenging con yet -- becoming model citizens. Under the tutelage of their mentor, Prof…',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/en/thumb/0/00/The_Bad_Guys_poster.jpeg/220px-The_Bad_Guys_poster.jpeg',
        type: 'Comedy',
        rating: 6.9),
    Movie(
        title: 'The Adam Project',
        description:
            'After accidentally crash-landing in 2022, time-traveling fighter pilot Adam Reed teams up with his 12-year-old self for a mission to save the future.',
        imageUrl:
            'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSGZMvynxlczttOzspLoBEulfsZHR4kiKQ_k-oixot8HxNz1xds',
        type: 'Sci-fi/Adventure',
        rating: 6.7),
    Movie(
        title: 'Downton Abbey: A New Era',
        description:
            'Follow-up to the 2019 feature film in which the Crawley family and Downton staff received a royal visit from the King and Queen of Great Britain.',
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BZDdjZjM1YWItNWRmOS00OTEzLWJmYjAtOGQzNTAyNmEwNDhjXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg',
        type: 'Drama/Romance',
        rating: 7.7),
  ];
  @override
  Widget build(BuildContext context) {
    return BodyWidget(movieData: movieData);
  }
}
