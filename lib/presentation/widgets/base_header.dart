import 'package:flutter/material.dart';

import '../core/styles.dart';
import 'base_card.dart';
import 'circle.dart';

class BaseHeader extends StatelessWidget {
  final String title;
  final double fontSize;
  final EdgeInsets padding;

  const BaseHeader(
    this.title, {
    super.key,
    this.fontSize = 24,
    this.padding = const EdgeInsets.symmetric(vertical: 30),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          BaseCard(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: const [
                BalanceItem(color: Styles.nft, currency: 'NFT', value: 10),
                SizedBox(width: 14),
                BalanceItem(color: Styles.dr, currency: 'DR', value: 1984),
              ],
            ),
          ),
          const SizedBox(width: 40),
        ],
      ),
    );
  }
}

class BalanceItem extends StatelessWidget {
  final Color color;
  final String currency;
  final double value;

  const BalanceItem({
    super.key,
    required this.color,
    required this.currency,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Circle(color: color, size: 10),
        RichText(
          text: TextSpan(
            text: '  $value',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: ' $currency',
                style: TextStyle(color: color),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
