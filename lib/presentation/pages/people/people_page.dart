import 'package:flutter/material.dart';

import '../../core/navigation_page_wrapper.dart';
import '../../widgets/base_header.dart';
import '../../widgets/base_text_field.dart';

export 'bloc/people_bloc.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  static const String name = '/people';

  @override
  Widget build(BuildContext context) {
    return NavigationPageWrapper(
      activeIndex: 2,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          BaseHeader('Поделитесь NFT или монетами со своим коллегой'),
          BaseTextField(hint: 'Поиск'),
        ],
      ),
    );
  }
}
