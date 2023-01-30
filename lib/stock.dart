import 'dart:ffi';

import 'package:flutter/material.dart';

class Stock extends StatelessWidget {
  final String name;
  final double value;
  final double percentage;
  final bool isUp;
  final IconData icon;
  final Color color;
  final EdgeInsets margin;
  final EdgeInsets padding;

  const Stock({super.key, required this.name, required this.value, required this.percentage, required this.isUp, required this.icon, required this.color, this.margin = EdgeInsets.zero, this.padding = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: const Icon(
              Icons.more_vert,
              color: Colors.white70,
              size: 40,
            ),
          ),
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
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}