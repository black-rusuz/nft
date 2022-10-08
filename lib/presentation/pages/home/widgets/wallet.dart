import 'package:flutter/material.dart';

import '../../../widgets/base_card.dart';
import '../../../widgets/content_block.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentBlock(
      icon: Icons.account_balance_wallet,
      title: 'Мой кошелёк',
      child: Row(
        children: const [
          BaseCard(
            child: Text('Card'),
          ),
          BaseCard(
            child: Text('Card'),
          ),
        ],
      ),
    );
  }
}
