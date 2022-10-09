import 'package:flutter/material.dart';

import '../../../widgets/base_card.dart';
import '../../../widgets/content_block.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentBlock(
      icon: Icons.payment,
      title: 'Последние транзакции',
      child: BaseCard(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
