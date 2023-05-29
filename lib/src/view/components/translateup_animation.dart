import 'package:flutter/material.dart';

class TranslateUpAnimation extends StatelessWidget {
  const TranslateUpAnimation({super.key, required this.child, required this.duration});

  final Widget child;
  final int duration;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return TweenAnimationBuilder(
        tween: Tween<double>(
          begin: 1,
          end: 0,
        ),
        curve: Curves.easeInOut,
        duration: Duration(milliseconds: duration),
        builder: (context, value, _) {
          return Transform.translate(
            offset: Offset(0, value * size.height),
            child: child,
          );
        });
  }
}
