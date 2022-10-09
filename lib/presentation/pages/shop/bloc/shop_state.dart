part of 'shop_bloc.dart';

abstract class ShopState extends Equatable {
  const ShopState();

  @override
  List<Object> get props => [];
}

class ShopInitial extends ShopState {}

class ShopSuccess extends ShopState {
  final List<ProductModel> products;

  const ShopSuccess({required this.products});

  @override
  List<Object> get props => [
        ...products,
      ];
}
