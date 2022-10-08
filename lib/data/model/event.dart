import 'package:equatable/equatable.dart';

import 'enums.dart';

class EventModel extends Equatable {
  final String title;
  final String description;
  final String imageUrl;
  final DateTime dateTime;
  final String place;
  final double price;
  final Currency currency;

  const EventModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.dateTime,
    required this.place,
    required this.price,
    required this.currency,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      title: json['title'],
      description: json['description'],
      imageUrl: json['image_url'],
      dateTime: DateTime.parse(json['date_time']),
      place: json['place'],
      price: json['price'],
      currency: (json['currency'] as String).toCurrency,
    );
  }

  @override
  List<Object?> get props => [
        title,
        dateTime,
        place,
        price,
        currency,
      ];
}
