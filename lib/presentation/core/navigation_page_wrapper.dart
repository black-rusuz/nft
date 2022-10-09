import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'menu.dart';

class NavigationPageWrapper extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;

  const NavigationPageWrapper({
    super.key,
    this.appBar,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar,
      body: Row(
        children: [
          const Menu(),
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  left: 480,
                  child: SvgPicture.asset(
                    'assets/bg.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                body,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
