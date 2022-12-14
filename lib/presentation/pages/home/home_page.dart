import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/navigation_page_wrapper.dart';
import '../../widgets/base_header.dart';
import 'bloc/home_bloc.dart';
import 'widgets/events.dart';
import 'widgets/teams.dart';
import 'widgets/wallet.dart';

export 'bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String name = '/home';

  @override
  Widget build(BuildContext context) {
    return NavigationPageWrapper(
      activeIndex: 1,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeSuccess) {
            return ListView(
              children: [
                const BaseHeader('С возвращением, Иван!'),
                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wallet(
                            nftValue: state.nftValue,
                            drValue: state.drValue,
                          ),
                          const SizedBox(height: 40),
                          Events(events: state.events),
                        ],
                      ),
                    ),
                    const SizedBox(width: 25),
                    Expanded(
                      child: Column(
                        children: const [
                          Teams(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
