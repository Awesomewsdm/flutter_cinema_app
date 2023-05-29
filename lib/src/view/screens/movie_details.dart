import 'package:flutter/material.dart';
import 'package:flutter_movies/src/model/movie_model.dart';
import 'package:flutter_movies/src/view/components/app_chip.dart';
import 'package:flutter_movies/src/view/components/icons.dart';
import 'package:flutter_movies/src/view/components/scaleup_animation.dart';
import 'package:flutter_movies/src/view/components/translateup_animation.dart';
import 'package:flutter_movies/src/view/screens/seat_booking_screen.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ScaleUpAnimation(
                      child: TransparentIcon(
                          onTap: () => Navigator.pop(context),
                          icon: Icons.chevron_left),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ScaleUpAnimation(
                      child: TransparentIcon(
                        icon: Icons.favorite_outline,
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                TranslateUpAnimation(
                  duration: 1000,
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
                TranslateUpAnimation(
                  duration: 1500,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ChipWidget(
                          label: "IMDB ${movie.imdbRating}",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ChipWidget(label: movie.genre),
                      ),
                      ChipWidget(label: movie.genre),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TranslateUpAnimation(
                  duration: 2000,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SeatBookingScreen(
                              movie: movie,
                            );
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 15,
                        )),
                    child: const Text(
                      "Book Ticket",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
