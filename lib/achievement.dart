import 'package:flutter/material.dart';

class Achievement extends StatelessWidget {
  final String name;
  final AssetImage icon;
  final Color color;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color? iconColor;

  const Achievement({super.key, required this.name, required this.icon, required this.color, this.margin = EdgeInsets.zero, this.padding = EdgeInsets.zero, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.only(bottom: 15),
              child: Image(
                image: icon,
                width: 40,
                height: 40,
                color: iconColor,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(left: 2, right: 2, bottom: 5),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}