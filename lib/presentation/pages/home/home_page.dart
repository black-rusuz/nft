import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/navigation_page_wrapper.dart';
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
            return ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    'С возвращением, Хуй Булыжников!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 15),
                Wallet(nftValue: state.nftValue, drValue: state.drValue),
                const SizedBox(height: 40),
                Events(events: state.events),
              ],
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
