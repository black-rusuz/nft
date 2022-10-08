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
      child: SizedBox(
        height: 300,
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
          physics: const NeverScrollableScrollPhysics(),
          children: events.map(eventsMapper).toList(),
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final EventModel event;

  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        children: [
          Text(event.title),
        ],
      ),
    );
  }
}
