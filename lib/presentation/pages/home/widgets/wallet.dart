import 'package:flutter/material.dart';

import '../../../core/styles.dart';
import '../../../widgets/base_card.dart';
import '../../../widgets/content_block.dart';

class Wallet extends StatelessWidget {
  final double nftValue;
  final double drValue;

  const Wallet({super.key, required this.nftValue, required this.drValue});

  @override
  Widget build(BuildContext context) {
    return ContentBlock(
      icon: Icons.account_balance_wallet,
      title: 'Мой кошелёк',
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: WalletItem(
                title: 'NFT',
                value: nftValue,
                textColor: Styles.nft,
                backgroundColor: Styles.nftBg,
              ),
            ),
            const SizedBox(width: 25),
            Expanded(
              child: WalletItem(
                title: 'Digital\nRoubles',
                value: drValue,
                textColor: Styles.dr,
                backgroundColor: Styles.drBg,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WalletItem extends StatelessWidget {
  final String title;
  final double value;
  final Color textColor;
  final Color backgroundColor;

  const WalletItem({
    super.key,
    required this.title,
    required this.value,
    required this.textColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BaseCard(
            color: backgroundColor,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: textColor,
              ),
            ),
          ),
          const Expanded(child: SizedBox()),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  color: textColor,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                value.toString(),
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
