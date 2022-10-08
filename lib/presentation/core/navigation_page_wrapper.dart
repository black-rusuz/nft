import 'package:flutter/material.dart';

import 'menu.dart';

class NavigationPageWrapper extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final Widget body;

  const NavigationPageWrapper({
    super.key,
    required this.appBar,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Row(
        children: [
          const Menu(),
          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }
}
