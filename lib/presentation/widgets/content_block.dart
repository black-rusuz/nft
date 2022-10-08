import 'package:flutter/material.dart';

class ContentBlock extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget child;

  const ContentBlock({
    super.key,
    required this.icon,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 18),
            const SizedBox(width: 14),
            Text(title, style: const TextStyle(fontSize: 16)),
          ],
        ),
        const SizedBox(height: 20),
        child,
      ],
    );
  }
}
