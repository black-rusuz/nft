import 'package:flutter/material.dart';

import '../../core/menu.dart';

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
