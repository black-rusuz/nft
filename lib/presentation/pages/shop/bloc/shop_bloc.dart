import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'shop_event.dart';
part 'shop_state.dart';

@injectable
class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc() : super(ShopInitial()) {
    on<ShopEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
