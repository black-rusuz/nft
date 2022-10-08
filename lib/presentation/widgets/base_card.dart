import 'package:flutter/material.dart';

import '../core/styles.dart';

class BaseCard extends StatelessWidget {
  final EdgeInsets padding;
  final Color color;
  final Widget child;

  const BaseCard({
    super.key,
    this.padding = const EdgeInsets.all(15),
    required this.child,
    this.color = Styles.cardBg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: Styles.borderRadius,
      ),
      child: child,
    );
  }
}
