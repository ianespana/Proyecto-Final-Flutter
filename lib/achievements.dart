import 'package:flutter/material.dart';
import 'achievement.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: const [
            Achievement(name: 'Racha de una semana', icon: Icons.spa, color: Color(0xFFFF9444)),
            Divider(),
            Achievement(name: 'Racha de una semana', icon: Icons.spa, color: Color(0xFFFF9444)),
            Divider(),
            Achievement(name: 'Racha de una semana', icon: Icons.spa, color: Color(0xFFFF9444)),
            Divider(),
            Achievement(name: 'Racha de una semana', icon: Icons.spa, color: Color(0xFFFF9444)),
            Divider(),
            Achievement(name: 'Racha de una semana', icon: Icons.spa, color: Color(0xFFFF9444)),
            Divider(),
            Achievement(name: 'Racha de una semana', icon: Icons.spa, color: Color(0xFFFF9444)),
            Divider(),
            Achievement(name: 'Racha de una semana', icon: Icons.spa, color: Color(0xFFFF9444)),
            Divider(),
            Achievement(name: 'Racha de una semana', icon: Icons.spa, color: Color(0xFFFF9444)),
            Divider(),
            Achievement(name: 'Racha de una semana', icon: Icons.spa, color: Color(0xFFFF9444)),
            Divider(),
            Achievement(name: 'Racha de una semana', icon: Icons.spa, color: Color(0xFFFF9444)),
            Divider(),
          ]),
    );
  }
}