import 'package:flutter/material.dart';

import '../../../../data/model/event.dart';
import '../../../widgets/base_card.dart';
import '../../../widgets/content_block.dart';

class Events extends StatelessWidget {
  final List<EventModel> events;

  const Events({super.key, required this.events});

  Widget eventsMapper(EventModel event) => EventCard(event: event);

  @override
  Widget build(BuildContext context) {
    return ContentBlock(
      icon: Icons.account_balance_wallet,
      title: 'Ближайшие мероприятия',
      child: GridView.count(
        crossAxisCount: 2,
        children: events.map(eventsMapper).toList(),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final EventModel event;

  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return const BaseCard(
      child: Text('Event'),
    );
  }
}
