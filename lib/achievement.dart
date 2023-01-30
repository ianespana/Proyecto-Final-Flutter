import 'package:flutter/material.dart';

class Achievement extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color color;
  final EdgeInsets margin;
  final EdgeInsets padding;

  const Achievement({super.key, required this.name, required this.icon, required this.color, this.margin = EdgeInsets.zero, this.padding = EdgeInsets.zero});

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Icon(
              icon,
              color: Colors.white70,
              size: 40,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(left: 2, right: 2),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}