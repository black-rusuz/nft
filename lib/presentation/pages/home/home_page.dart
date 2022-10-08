import 'package:flutter/material.dart';

import '../../core/navigation_page_wrapper.dart';
import 'widgets/events.dart';
import 'widgets/wallet.dart';

export 'bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String name = '/home';

  @override
  Widget build(BuildContext context) {
    return NavigationPageWrapper(
      appBar: AppBar(
        title: const Text('С возвращением, Анна Кокошко!'),
      ),
      body: Column(
        children: const [
          Wallet(),
          // Events(events: []),
        ],
      ),
    );
  }
}
