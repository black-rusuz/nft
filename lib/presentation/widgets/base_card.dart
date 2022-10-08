import 'package:flutter/material.dart';

import '../styles.dart';

class BaseCard extends StatelessWidget {
  final Widget child;

  const BaseCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Styles.cardBg,
        borderRadius: Styles.borderRadius,
      ),
      child: child,
    );
  }
}
