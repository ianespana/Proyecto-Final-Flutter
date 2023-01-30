import 'package:flutter/material.dart';
import 'achievement.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: GridView.extent(
          maxCrossAxisExtent: 150,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: const [
            Achievement(
                name: 'Racha de una semana',
                icon: Icons.spa,
                color: Color(0xFFFF9444)),
            Achievement(
              name: 'Racha de dos semanas',
              icon: Icons.spa,
              color: Color(0xFFBEE8B9),
            ),
            Achievement(
              name: 'Racha de tres semanas',
              icon: Icons.spa,
              color: Color(0xFFADF1FA),
            ),
            Achievement(
              name: 'Racha de cuatro semanas',
              icon: Icons.spa,
              color: Color(0xFFFFC3DF),
            ),
            Achievement(
              name: 'Racha de cinco semanas',
              icon: Icons.spa,
              color: Color(0xFFFF9444),
            ),
            Achievement(
              name: 'Racha de seis semanas',
              icon: Icons.spa,
              color: Color(0xFFBEE8B9),
            ),
            Achievement(
              name: 'Racha de siete semanas',
              icon: Icons.spa,
              color: Color(0xFFADF1FA),
            ),
            Achievement(
              name: 'Racha de ocho semanas',
              icon: Icons.spa,
              color: Color(0xFFFFC3DF),
            ),
            Achievement(
                name: 'Racha de nueve semanas',
                icon: Icons.spa,
                color: Color(0xFFFF9444)),
          ]),
    );
  }
}
