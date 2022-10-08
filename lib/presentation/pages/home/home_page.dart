import 'package:flutter/material.dart';

import '../../core/menu.dart';
import '../main/main_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String name = '/home';

  Widget get content => const MainPage();

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
