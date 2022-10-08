import 'package:flutter/material.dart';

import '../../core/navigation_page_wrapper.dart';
import 'widgets/wallet.dart';

export 'bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String name = '/home';

  @override
  Widget build(BuildContext context) {
    return NavigationPageWrapper(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'С возвращением, Хуй Булыжников!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          Wallet(),
          // Events(events: []),
        ],
      ),
    );
  }
}
