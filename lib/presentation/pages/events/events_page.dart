import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/event.dart';
import '../../core/navigation_page_wrapper.dart';
import '../../widgets/base_header.dart';
import '../../widgets/base_text_field.dart';
import '../home/widgets/events.dart';
import 'bloc/events_bloc.dart';

export 'bloc/events_bloc.dart';

class EventsPage extends StatelessWidget {
  static const name = '/events';

  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationPageWrapper(
      activeIndex: 4,
      body: BlocBuilder<EventsBloc, EventsState>(
        builder: (context, state) {
          if (state is EventsSuccess) {
            return ListView(
              children: [
                const BaseHeader(
                    'Посещайте мероприятия, чтобы заработать монеты или NFT'),
                const BaseTextField(hint: 'Поиск'),
                const SizedBox(height: 30),
                EventsCategory(
                  title: 'Ближайшие мероприятия',
                  events: state.events,
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

class EventsCategory extends StatelessWidget {
  final String title;
  final List<EventModel> events;

  const EventsCategory({super.key, required this.title, required this.events});

  Widget eventsMapper(EventModel event) => EventCard(event: event);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 18),
        GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
          shrinkWrap: true,
          childAspectRatio: 250 / 210,
          children: events.map(eventsMapper).toList(),
        ),
      ],
    );
  }
}
