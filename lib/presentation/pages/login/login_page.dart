import 'package:flutter/material.dart';

import '../../styles.dart';
import '../home/home_page.dart';

class LoginPage extends StatelessWidget {
  static const String name = '/';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 32 + 36 + 32,
        titleSpacing: 46,
        title: const Text(
          'Добро пожаловать в NFTShare!',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 450,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          decoration: BoxDecoration(
            color: Styles.cardBg,
            borderRadius: Styles.borderRadius,
            border: Border.all(color: Styles.cardBorder),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Styles.cardBorder,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.person),
              ),
              const SizedBox(height: 22),
              const TextField(
                decoration: InputDecoration(hintText: 'Логин'),
              ),
              const SizedBox(height: 12),
              const TextField(
                decoration: InputDecoration(hintText: 'Пароль'),
              ),
              const SizedBox(height: 22),
              TextButton(
                onPressed: () =>
                    Navigator.of(context).pushReplacementNamed(HomePage.name),
                child: const Text('Войти'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
