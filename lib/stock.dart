import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Stock extends StatelessWidget {
  final String name;
  final double value;
  final double percentage;
  final AssetImage? icon;
  final Color color;
  final EdgeInsets margin;
  final EdgeInsets padding;

  const Stock({super.key, required this.name, required this.value, required this.percentage, this.icon, required this.color, this.margin = EdgeInsets.zero, this.padding = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    AssetImage? parsedIcon;

    if (icon == null) {
      parsedIcon = AssetImage("icons/stocks/${name.toLowerCase()}.png");
    } else {
      parsedIcon = icon;
    }

    return Container(
      margin: margin,
      padding: padding,
      height: 150,
      width: 250,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: PopupMenuButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white70,
                  size: 40,
                ),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: InkWell(
                        child: const Text("Opción A"),
                        onTap: () {
                          if (kDebugMode) {
                            print("a");
                          }
                        },
                      ),
                    ),
                    PopupMenuItem(
                      child: InkWell(
                        child: const Text("Opción B"),
                        onTap: () {
                          if (kDebugMode) {
                            print("b");
                          }
                        },
                      ),
                    ),
                    PopupMenuItem(
                      child: InkWell(
                        child: const Text("Opción C"),
                        onTap: () {
                          if (kDebugMode) {
                            print("c");
                          }
                        },
                      ),
                    ),
                  ];
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageIcon(
                    parsedIcon,
                    color: Colors.white70,
                    size: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      "\$$value ($percentage%)",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white38,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}