import 'package:flutter/material.dart';
import 'package:flutter_movies/src/model/movie_model.dart';
import 'package:flutter_movies/src/view/components/app_chip.dart';
import 'package:flutter_movies/src/view/components/movie_details.dart';

class MovieList extends StatelessWidget {
  const MovieList({
    super.key,
    required this.movie,
  });

  final Movie movie;

  Route _goToMovieDetailsPage() {
    return PageRouteBuilder(
      reverseTransitionDuration: const Duration(microseconds: 600),
      transitionDuration: const Duration(milliseconds: 600),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // const begin = Offset(0, 1);
        // const end = Offset(0, 0);
        // const curve = Curves.bounceInOut;

        // // var tween = Tween(begin: begin, end: end).chain(
        // //   CurveTween(curve: curve),
        // // );

        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return MovieDetails(
          movie: movie,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          _goToMovieDetailsPage(),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 435,
        width: 250,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                movie.image,
                height: 535,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ChipWidget(label: "IMDB ${movie.imdbRating}"),
                  const Spacer(),
                  Hero(
                    tag: movie.name,
                    child: Text(
                      movie.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        shadows: [
                          Shadow(
                            color: Colors.black54,
                            offset: Offset(0, 1),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    movie.genre,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      shadows: [
                        Shadow(
                          color: Colors.black54,
                          offset: Offset(0, 1),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
