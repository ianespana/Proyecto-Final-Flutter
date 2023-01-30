import 'package:flutter/material.dart';
import 'package:proyecto_final_flutter/stock.dart';

class Stocks extends StatelessWidget {
  const Stocks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portafolio"),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: GridView.count(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          childAspectRatio: 1.3,
          crossAxisCount: 2,
          mainAxisSpacing: 13,
          crossAxisSpacing: 18,
          children: [
            Stock(
              name: 'AMD',
              value: 73.12,
              percentage: -3.06,
              color: Theme.of(context).colorScheme.primary,
            ),
            Stock(
              name: 'Apple',
              value: 143.17,
              percentage: -1.90,
              color: Theme.of(context).colorScheme.primary,
            ),
            Stock(
              name: 'Cisco',
              value: 48.17,
              percentage: -0.69,
              color: Theme.of(context).colorScheme.primary,
            ),
            Stock(
              name: 'Dell',
              value: 39.85,
              percentage: -1.14,
              color: Theme.of(context).colorScheme.primary,
            ),
            Stock(
              name: 'Facebook',
              value: 147.6,
              percentage: -2.72,
              color: Theme.of(context).colorScheme.primary,
            ),
            Stock(
              name: 'Garmin',
              value: 97.75,
              percentage: -0.96,
              color: Theme.of(context).colorScheme.primary,
            ),
            Stock(
              name: 'Google',
              value: 89.28,
              percentage: -2.43,
              color: Theme.of(context).colorScheme.primary,
            ),
            Stock(
              name: 'HP',
              value: 28.85,
              percentage: -1.28,
              color: Theme.of(context).colorScheme.primary,
            ),
            Stock(
              name: 'Intel',
              value: 27.85,
              percentage: -1.07,
              color: Theme.of(context).colorScheme.primary,
            ),
            Stock(
              name: 'NVIDIA',
              value: 194,
              percentage: -4.77,
              color: Theme.of(context).colorScheme.primary,
            ),
            Stock(
              name: 'Qualcomm',
              value: 130.33,
              percentage: -2.31,
              color: Theme.of(context).colorScheme.primary,
            ),
            Stock(
              name: 'Tesla',
              value: 168.80,
              percentage: -5.10,
              color: Theme.of(context).colorScheme.primary,
            ),
            Stock(
              name: 'Xiaomi',
              value: 12.62,
              percentage: -5.96,
              color: Theme.of(context).colorScheme.primary,
            ),
          ]),
    );
  }
}
