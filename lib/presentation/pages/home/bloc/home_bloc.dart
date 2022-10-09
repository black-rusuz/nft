import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/model/enums.dart';
import '../../../../data/model/event.dart';
import '../../../../domain/repository.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Repository _repository;

  HomeBloc(this._repository) : super(HomeInitial()) {
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
          imageUrl: 'https://i.imgur.com/YDeLdaH.jpeg',
          dateTime: DateTime.now(),
          place: 'ул. Пушкина, д. Колотушкина',
          price: 1488,
          currency: Currency.digitalRouble,
        ),
        EventModel(
          title: 'Говно мамонта',
          description:
              'Задача заключается в том, чтобы профессионально муравью хуй убрать',
          imageUrl: 'https://i.imgur.com/jAsUVh4.jpeg',
          dateTime: DateTime.now(),
          place: 'Офис в Замоскворечье',
          price: 3,
          currency: Currency.nft,
        ),
        EventModel(
          title: 'Жопа коня',
          description:
              'Задача заключается в том, чтобы профессионально муравью хуй null',
          imageUrl: 'https://i.imgur.com/4WNgyr5.jpeg',
          dateTime: DateTime.now(),
          place: 'В пизде блядь',
          price: 1488,
          currency: Currency.digitalRouble,
        ),
      ],
    ));
  }
}
