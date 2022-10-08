import 'package:flutter/material.dart';

import '../styles.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Material(
        color: Styles.cardBg,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: const [
              MenuItem(),
              Text('Menu'),
              Text('First point'),
              Text('Second point'),
              Text('Third point'),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Ink(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Styles.inactive,
              borderRadius: Styles.borderRadius,
            ),
            child: const Icon(Icons.home_outlined, size: 20),
          ),
          const Text('Главная'),
        ],
      ),
    );
  }
}
