import 'package:equatable/equatable.dart';

import 'enums.dart';

class TransactionModel extends Equatable {
  final int from;
  final int to;
  final DateTime dateTime;
  final double value;
  final Currency currency;

  const TransactionModel({
    required this.from,
    required this.to,
    required this.dateTime,
    required this.value,
    required this.currency,
  });

  @override
  List<Object?> get props => [
        from,
        to,
        dateTime,
        value,
        currency,
      ];
}
