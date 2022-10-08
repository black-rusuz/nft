import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String name = '/home';

  Widget get content => const Center(child: Text('home'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Menu(),
          Expanded(child: content),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Menu'),
        Text('First point'),
        Text('Second point'),
        Text('Third point'),
      ],
    );
  }
}
