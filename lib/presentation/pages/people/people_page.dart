import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/user_model.dart';
import '../../core/navigation_page_wrapper.dart';
import '../../widgets/base_card.dart';
import '../../widgets/base_header.dart';
import '../../widgets/base_text_field.dart';
import 'bloc/people_bloc.dart';

export 'bloc/people_bloc.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  static const String name = '/people';

  Widget usersMapper(UserModel user) => UserCard(user: user);

  @override
  Widget build(BuildContext context) {
    return NavigationPageWrapper(
      activeIndex: 2,
      body: BlocBuilder<PeopleBloc, PeopleState>(
        builder: (context, state) {
          if (state is PeopleSuccess) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BaseHeader(
                    'Поделитесь NFT или монетами со своим коллегой'),
                const BaseTextField(hint: 'Поиск'),
                const SizedBox(height: 50),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 25,
                    shrinkWrap: true,
                    childAspectRatio: 490 / 80,
                    children: state.users.map(usersMapper).toList(),
                  ),
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

class UserCard extends StatelessWidget {
  final UserModel user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return const BaseCard(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: SizedBox(),
    );
  }
}
