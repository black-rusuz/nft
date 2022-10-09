import 'package:flutter/material.dart';

import '../pages/events/events_page.dart';
import '../pages/home/home_page.dart';
import '../pages/login/login_page.dart';
import '../pages/people/people_page.dart';
import '../pages/profile/profile_page.dart';
import '../pages/shop/shop_page.dart';
import 'styles.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Styles.cardBg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          MenuItem(
            title: 'Главная',
            icon: Icons.home_outlined,
            onTap: () =>
                Navigator.of(context).pushReplacementNamed(HomePage.name),
          ),
          MenuItem(
            title: 'Коллеги',
            icon: Icons.people_alt,
            onTap: () =>
                Navigator.of(context).pushReplacementNamed(PeoplePage.name),
          ),
          MenuItem(
            title: 'Магазин',
            icon: Icons.shopping_bag_outlined,
            onTap: () =>
                Navigator.of(context).pushReplacementNamed(ShopPage.name),
          ),
          MenuItem(
            title: 'События',
            icon: Icons.calendar_month,
            onTap: () =>
                Navigator.of(context).pushReplacementNamed(EventsPage.name),
          ),
          MenuItem(
            title: 'Профиль',
            icon: Icons.person,
            onTap: () =>
                Navigator.of(context).pushReplacementNamed(ProfilePage.name),
          ),
          const Expanded(child: SizedBox()),
          MenuItem(
            padding: EdgeInsets.zero,
            icon: Icons.power_settings_new,
            title: 'Выход',
            onTap: () =>
                Navigator.of(context).pushReplacementNamed(LoginPage.name),
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
                color: Styles.inactiveBg,
                borderRadius: Styles.borderRadius,
              ),
              child: Icon(icon, color: Colors.white, size: 20),
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
