import 'package:flutter/material.dart';

import '../core/styles.dart';

class BaseCard extends StatelessWidget {
  final Color color;
  final Widget child;

  const BaseCard({super.key, required this.child, this.color = Styles.cardBg});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: Styles.borderRadius,
      ),
      child: child,
    );
  }
}
