import 'package:equatable/equatable.dart';

import 'enums.dart';

class ProductModel extends Equatable {
  final String name;
  final String imageUrl;
  final double price;
  final Currency currency;

  const ProductModel({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.currency,
  });

  @override
  List<Object?> get props => [
        name,
        imageUrl,
        price,
        currency,
      ];
}
