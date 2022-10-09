import 'package:flutter/material.dart';

import '../../../core/styles.dart';
import '../../../widgets/base_card.dart';
import '../../../widgets/content_block.dart';

class Teams extends StatelessWidget {
  const Teams({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentBlock(
      icon: Icons.sports_kabaddi,
      title: 'Командные соревнования',
      child: BaseCard(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Team(
                  name: 'Batman',
                  imageUrl: 'https://i.imgur.com/I1Izlwl.gif',
                ),
                Icon(Icons.sports_kabaddi, color: Colors.white, size: 40),
                Team(
                  name: 'Superman',
                  imageUrl: 'https://i.imgur.com/SW1lyr0.jpeg',
                  reverse: true,
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Bar(left: 35, right: 24),
          ],
        ),
      ),
    );
  }
}

class Team extends StatelessWidget {
  final String name;
  final String imageUrl;
  final bool reverse;

  const Team({
    super.key,
    required this.name,
    required this.imageUrl,
    this.reverse = false,
  });

  List<Widget> get children => [
        ClipRRect(
          borderRadius: Styles.borderRadius,
          child: SizedBox(
            width: 65,
            height: 65,
            child: Image.network(imageUrl, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: !reverse ? children : children.reversed.toList(),
    );
  }
}

class Bar extends StatelessWidget {
  final int left;
  final int right;

  const Bar({super.key, required this.left, required this.right});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: left,
          child: Container(
            height: 6,
            decoration: BoxDecoration(
              color: Styles.nft,
              borderRadius: Styles.borderRadius,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Expanded(
          flex: right,
          child: Container(
            height: 6,
            decoration: BoxDecoration(
              color: Styles.dr,
              borderRadius: Styles.borderRadius,
            ),
          ),
        ),
      ],
    );
  }
}
