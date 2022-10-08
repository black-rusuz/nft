import 'package:flutter/material.dart';

import '../../core/navigation_page_wrapper.dart';
import '../../widgets/base_text_field.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationPageWrapper(
      body: Column(
        children: const [
          BaseTextField(
            hint: 'Поиск',
          ),
        ],
      ),
    );
  }
}
