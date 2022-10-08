import 'package:flutter/cupertino.dart';

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
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
