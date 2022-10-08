import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/model/enums.dart';
import '../../../../data/model/event.dart';

part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInit>(_init);
  }

  void _init(HomeInit event, Emitter<HomeState> emit) {
    emit(HomeSuccess(
      nftValue: 42,
      drValue: 1488,
      events: [
        EventModel(
          title: 'Залупа единорога',
          description:
              'Задача заключается в том, чтобы профессионально муравью хуй приделать',
          imageUrl: 'https://api.unsplash.com/random/1',
          dateTime: DateTime.now(),
          place: 'ул. Пушкина, д. Колотушкина',
          price: 1488,
          currency: Currency.digitalRouble,
        ),
        EventModel(
          title: 'Говно мамонта',
          description:
              'Задача заключается в том, чтобы профессионально муравью хуй убрать',
          imageUrl: 'https://api.unsplash.com/random/2',
          dateTime: DateTime.now(),
          place: 'Офис в Замоскворечье',
          price: 3,
          currency: Currency.nft,
        ),
        EventModel(
          title: 'Жопа коня',
          description:
              'Задача заключается в том, чтобы профессионально муравью хуй null',
          imageUrl: 'https://api.unsplash.com/3',
          dateTime: DateTime.now(),
          place: 'В пизде блядь',
          price: 1488,
          currency: Currency.digitalRouble,
        ),
      ],
    ));
  }
}
