import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/navigation_page_wrapper.dart';
import 'bloc/shop_bloc.dart';

export 'bloc/shop_bloc.dart';

class ShopPage extends StatelessWidget {
  static const name = '/shop';

  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationPageWrapper(
      body: BlocBuilder<ShopBloc, ShopState>(
        builder: (context, state) {
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
