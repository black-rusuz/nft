import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/navigation_page_wrapper.dart';
import '../../widgets/base_header.dart';
import 'bloc/home_bloc.dart';
import 'widgets/events.dart';
import 'widgets/wallet.dart';

export 'bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String name = '/home';

  @override
  Widget build(BuildContext context) {
    return NavigationPageWrapper(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeSuccess) {
            return SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BaseHeader('С возвращением, Хуй Булыжников!'),
                        const SizedBox(height: 15),
                        Wallet(
                          nftValue: state.nftValue,
                          drValue: state.drValue,
                        ),
                        const SizedBox(height: 40),
                        Events(events: state.events),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                ],
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
