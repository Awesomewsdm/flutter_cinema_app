
import 'package:flutter/material.dart';
import 'package:flutter_movies/src/view/components/icons.dart';

class TopNavMenuBar extends StatelessWidget {
  const TopNavMenuBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TransparentIcon(
          icon: Icons.notifications,
        ),
        TransparentIcon(
          icon: Icons.search,
        ),
      ],
    );
  }
}
