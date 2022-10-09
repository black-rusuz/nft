import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/model/enums.dart';
import '../../../../data/model/product.dart';
import '../../../../domain/repository.dart';

part 'shop_event.dart';
part 'shop_state.dart';

@injectable
class ShopBloc extends Bloc<ShopEvent, ShopState> {
  final Repository _repository;

  ShopBloc(this._repository) : super(ShopInitial()) {
    on<ShopInit>(_init);
  }

  void _init(ShopInit event, Emitter<ShopState> emit) {
    emit(const ShopSuccess(products: [
      ProductModel(
        name: 'Фирменный коктейль',
        imageUrl: 'https://i.imgur.com/bKIExdV.jpeg',
        price: 5,
        currency: Currency.nft,
      ),
    ]));
  }
}
