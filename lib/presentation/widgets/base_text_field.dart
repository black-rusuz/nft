import 'package:flutter/material.dart';

class BaseTextField extends StatelessWidget {
  final String? hint;

  const BaseTextField({super.key, this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
      ),
    );
  }
}
