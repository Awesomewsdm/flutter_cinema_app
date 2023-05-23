import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_movies/src/model/movie_model.dart';
import 'package:flutter_movies/src/view/components/all_movies.dart';
import 'package:flutter_movies/src/view/components/bottom_nav_bar.dart';
import 'package:flutter_movies/src/view/components/top_menu_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

late Movie movie;

class _HomeState extends State<Home> {
  double top = 300;
  double left = 300;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final columns = sqrt(movies.length).toInt();

    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          var topPos = top + (details.delta.dy * 1.5);
          var leftPos = left + (details.delta.dx * 1.5);
          setState(() {
            top = topPos;
            left = leftPos;
          });
        },
        child: Container(
          height: size.height,
          width: size.width,
          color: Colors.black,
          child: SafeArea(
            child: Stack(
              children: [
                AnimatedPositioned(
                  top: top,
                  left: left,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.linear,
                  child: SizedBox(
                    width: columns * 320,
                    child: Wrap(
                      children: List.generate(
                        movies.length,
                        (index) => Transform.translate(
                          offset: Offset(0, index.isEven ? 200 : 0),
                          child: MovieList(movie: movies[index]),
                        ),
                      ),
                    ),
                  ),
                ),
                const TopNavMenuBar(),
                const BottomNavBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
