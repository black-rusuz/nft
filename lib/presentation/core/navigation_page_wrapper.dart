import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'menu.dart';

class NavigationPageWrapper extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final int activeIndex;

  const NavigationPageWrapper({
    super.key,
    this.appBar,
    required this.body,
    required this.activeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar,
      body: Row(
        children: [
          Menu(activeIndex: activeIndex),
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
                Positioned.fill(
                  right: 30,
                  child: body,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
