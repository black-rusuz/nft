import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/navigation_page_wrapper.dart';
import 'bloc/profile_bloc.dart';

export 'bloc/profile_bloc.dart';

class ProfilePage extends StatelessWidget {
  static const name = '/profile';

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationPageWrapper(
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
