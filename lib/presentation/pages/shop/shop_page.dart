import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/navigation_page_wrapper.dart';
import '../../widgets/base_header.dart';
import 'bloc/shop_bloc.dart';
import 'widgets/category.dart';

export 'bloc/shop_bloc.dart';

class ShopPage extends StatelessWidget {
  static const name = '/shop';

  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationPageWrapper(
      activeIndex: 3,
      body: BlocBuilder<ShopBloc, ShopState>(
        builder: (context, state) {
          if (state is ShopSuccess) {
            return ListView(
              children: [
                const BaseHeader(
                    'Выбирайте товары и обменивайте на монеты или NFT'),
                Category(title: 'Перекус', products: state.products),
                // const ShopCategory(title: 'Мерч', products: []),
              ],
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
