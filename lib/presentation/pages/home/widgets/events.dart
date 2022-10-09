import 'package:flutter/material.dart';

import '../../../../data/model/event.dart';
import '../../../core/styles.dart';
import '../../../widgets/base_card.dart';
import '../../../widgets/circle.dart';
import '../../../widgets/content_block.dart';
import '../../../widgets/icon_text.dart';

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
        mainAxisSpacing: 25,
        crossAxisSpacing: 25,
        shrinkWrap: true,
        childAspectRatio: 250 / 210,
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
    return BaseCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: Styles.borderRadius,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 232 / 142,
                  child: Image.network(
                    event.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.black.withOpacity(0.7),
                    child: Text(
                      event.title,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconText(
                    Icons.edit_calendar,
                    event.dateTime.toIso8601String(),
                  ),
                  const SizedBox(height: 8),
                  IconText(
                    Icons.map,
                    event.place,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '+ ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  CurrencyCircle(currency: event.currency, size: 12),
                  const SizedBox(width: 4),
                  Text(
                    event.price.toString(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
