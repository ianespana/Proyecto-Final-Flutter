import 'package:flutter/material.dart';

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: [
            _createAchievement(
                "Racha de una semana", "Invierte diariamente una semana"),
            Divider(),
            _createAchievement("Sí", "Sí"),
            Divider(),
            _createAchievement("Sí", "Sí"),
            Divider(),
            _createAchievement("Sí", "Sí"),
            Divider(),
            _createAchievement("Sí", "Sí"),
            Divider(),
            _createAchievement("Sí", "Sí"),
            Divider(),
            _createAchievement("Sí", "Sí"),
            Divider(),
            _createAchievement("Sí", "Sí"),
            Divider(),
            _createAchievement("Sí", "Sí"),
            Divider(),
            _createAchievement("Sí", "Sí"),
          ]),
    );
  }
}

Widget _createAchievement(String name, String description) {
  return Container(
      child: Column(
    children: [Text(name), Text(description)],
  ));
}
