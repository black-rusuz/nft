import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String data;

  const IconText(this.icon, this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 14, color: const Color(0xffA4A4A9)),
        const SizedBox(width: 8),
        Text(data),
      ],
    );
  }
}
