import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/styles.dart';
import '../../widgets/base_text_field.dart';
import '../home/home_page.dart';

export 'bloc/login_bloc.dart';

class LoginPage extends StatelessWidget {
  static const String name = '/';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/login_bg.svg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              width: 450,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              decoration: BoxDecoration(
                color: Styles.cardBg,
                borderRadius: Styles.borderRadius,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Styles.inputBg,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.person),
                  ),
                  const SizedBox(height: 22),
                  const BaseTextField(hint: 'Логин'),
                  const SizedBox(height: 12),
                  const BaseTextField(hint: 'Пароль'),
                  const SizedBox(height: 22),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context)
                        .pushReplacementNamed(HomePage.name),
                    child: const Text('Войти'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
