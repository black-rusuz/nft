import 'package:flutter/material.dart';

import '../styles.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Styles.cardBg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          MenuItem(
            title: 'Главная',
            icon: Icons.home_outlined,
            onTap: () {},
          ),
          MenuItem(
            title: 'Коллеги',
            icon: Icons.people_alt,
            onTap: () {},
          ),
          MenuItem(
            title: 'Магазин',
            icon: Icons.shopping_bag_outlined,
            onTap: () {},
          ),
          MenuItem(
            title: 'События',
            icon: Icons.calendar_month,
            onTap: () {},
          ),
          MenuItem(
            title: 'Профиль',
            icon: Icons.person,
            onTap: () {},
          ),
          const Expanded(child: SizedBox()),
          MenuItem(
            padding: EdgeInsets.zero,
            icon: Icons.power_settings_new,
            title: 'Выход',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final EdgeInsets padding;
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const MenuItem({
    super.key,
    this.padding = const EdgeInsets.only(bottom: 20),
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Styles.inactive,
                borderRadius: Styles.borderRadius,
              ),
              child: Icon(icon, size: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}
