import 'package:flutter/material.dart';
import 'achievement.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Logros"),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: GridView.count(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          childAspectRatio: 1,
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: const [
            Achievement(
              name: 'Racha de una semana',
              icon: AssetImage("icons/achievements/crystal-512x512-2834760.png"),
              color: Color(0xFFFF9444)),
            Achievement(
              name: 'Racha de dos semanas',
              icon: AssetImage("icons/achievements/crystal-512x512-2834772.png"),
              color: Color(0xFFBEE8B9),
            ),
            Achievement(
              name: 'Racha de tres semanas',
              icon: AssetImage("icons/achievements/crystal-512x512-2834767.png"),
              color: Color(0xFFADF1FA),
            ),
            Achievement(
              name: 'Racha de cuatro semanas',
              icon: AssetImage("icons/achievements/diamond-512x512-2834756.png"),
              color: Color(0xFFFFC3DF),
            ),
            Achievement(
              name: 'Racha de cinco semanas',
              icon: AssetImage("icons/achievements/diamond-512x512-2834752.png"),
              color: Color(0xFFFF9444),
              iconColor: Colors.grey,
            ),
            Achievement(
              name: 'Racha de seis semanas',
              icon: AssetImage("icons/achievements/diamond-512x512-2834750.png"),
              color: Color(0xFFBEE8B9),
              iconColor: Colors.grey,
            ),
            Achievement(
              name: 'Racha de siete semanas',
              icon: AssetImage("icons/achievements/diamond-512x512-2834753.png"),
              color: Color(0xFFADF1FA),
              iconColor: Colors.grey,
            ),
            Achievement(
              name: 'Racha de ocho semanas',
              icon: AssetImage("icons/achievements/diamond-512x512-2834764.png"),
              color: Color(0xFFFFC3DF),
              iconColor: Colors.grey,
            ),
            Achievement(
              name: 'Racha de nueve semanas',
              icon: AssetImage("icons/achievements/heart-diamond-512x512-2834759.png"),
              color: Color(0xFFFF9444),
              iconColor: Colors.grey,
            ),
          ]),
    );
  }
}
