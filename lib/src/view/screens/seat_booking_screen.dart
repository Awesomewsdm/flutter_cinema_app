import 'package:flutter/material.dart';
import 'package:flutter_movies/src/model/movie_model.dart';
import 'package:flutter_movies/src/view/components/icons.dart';

class SeatBookingScreen extends StatelessWidget {
  const SeatBookingScreen({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.black,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TransparentIcon(
                        onTap: () => Navigator.pop(context),
                        icon: Icons.chevron_left_rounded,
                      ),
                      Text(
                        ("${movie.name} \n 20:00"),
                        textDirection: TextDirection.rtl,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ]),
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(18),
                  ),
                  child: Container(
                    height: 100,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.amber, Colors.orange],
                      ),
                    ),
                    child: const Stack(
                      children: [
                        Column(
                          children: [
                            Positioned(
                              left: 6,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.black,
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.black,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      backgroundColor: Colors.amber,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Buy"),
                        Text("\$10"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
