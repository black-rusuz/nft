import 'package:flutter/material.dart';

import '../../data/model/enums.dart';
import '../core/styles.dart';

class Circle extends StatelessWidget {
  final Color color;
  final double size;

  const Circle({super.key, required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class CurrencyCircle extends StatelessWidget {
  final Currency currency;
  final double size;

  const CurrencyCircle({
    super.key,
    required this.currency,
    required this.size,
  });

  Color get color {
    switch (currency) {
      case Currency.nft:
        return Styles.nft;
      case Currency.digitalRouble:
        return Styles.dr;
      case Currency.undefined:
        return Colors.yellow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
