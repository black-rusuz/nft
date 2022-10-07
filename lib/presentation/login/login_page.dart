import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
          color: Colors.black,
          width: 360,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.person),
              const TextField(
                decoration: InputDecoration(hintText: 'Логин'),
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'Пароль'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Войти'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
