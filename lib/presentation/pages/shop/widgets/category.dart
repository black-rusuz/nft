import 'package:flutter/material.dart';

import '../../../../data/model/product.dart';
import '../../../core/styles.dart';
import '../../../widgets/base_card.dart';
import '../../../widgets/circle.dart';

class Category extends StatelessWidget {
  final String title;
  final List<ProductModel> products;

  const Category({super.key, required this.title, required this.products});

  Widget productsMapper(ProductModel product) => ProductItem(product: product);

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
          childAspectRatio: 227 / 257,
          children: products.map(productsMapper).toList(),
        )
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final ProductModel product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: Styles.borderRadius,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.network(product.imageUrl, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CurrencyCircle(currency: product.currency, size: 10),
              const SizedBox(width: 4),
              Text(
                product.price.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
