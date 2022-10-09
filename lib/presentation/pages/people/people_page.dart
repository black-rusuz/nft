import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/user.dart';
import '../../core/navigation_page_wrapper.dart';
import '../../core/styles.dart';
import '../../widgets/base_card.dart';
import '../../widgets/base_header.dart';
import '../../widgets/base_text_field.dart';
import '../../widgets/circle.dart';
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
                    childAspectRatio: 490 / 60,
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

  static const TextStyle name = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle position = TextStyle(
    fontSize: 14,
    color: Styles.grey,
  );

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        children: [
          SizedBox(
            height: 56,
            width: 56,
            child: ClipOval(
              child: Image.network(user.imageUrl ?? '', fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.name, style: name),
                const SizedBox(height: 4),
                Text(user.position ?? 'Неопознанная капибара', style: position),
              ],
            ),
          ),
          const SizedBox(width: 15),
          BaseCard(
            padding: const EdgeInsets.all(5),
            color: Styles.nftBg,
            width: 50,
            height: 50,
            child: Row(
              children: const [
                Icon(
                  Icons.reply_rounded,
                  size: 20,
                  color: Styles.nft,
                  textDirection: TextDirection.rtl,
                ),
                Circle(color: Styles.nft, size: 16),
              ],
            ),
          ),
          const SizedBox(width: 10),
          BaseCard(
            padding: const EdgeInsets.all(5),
            color: Styles.drBg,
            width: 50,
            height: 50,
            child: Row(
              children: const [
                Icon(
                  Icons.reply_outlined,
                  size: 20,
                  color: Styles.dr,
                  textDirection: TextDirection.rtl,
                ),
                Circle(color: Styles.dr, size: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
