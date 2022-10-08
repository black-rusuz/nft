import 'package:flutter/material.dart';

import 'widgets/events.dart';
import 'widgets/wallet.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Wallet(),
        Events(events: []),
      ],
    );
  }
}
