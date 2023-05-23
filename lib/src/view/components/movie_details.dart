import 'package:flutter/material.dart';
import 'package:flutter_movies/src/model/movie_model.dart';
import 'package:flutter_movies/src/view/components/app_chip.dart';
import 'package:flutter_movies/src/view/components/icons.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        child: Stack(children: [
          Image.network(
            movie.image,
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TransparentIcon(icon: Icons.chevron_left),
                      SizedBox(
                        height: 15,
                      ),
                      TransparentIcon(icon: Icons.favorite_outline)
                    ],
                  ),
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
                    height: 15,
                  ),
                  Row(
                    children: [
                      ChipWidget(
                        label: "IMDB ${movie.imdbRating}",
                      ),
                      ChipWidget(label: movie.genre),
                      ChipWidget(label: movie.genre),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ChipWidget(label: "Book Ticket"),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
