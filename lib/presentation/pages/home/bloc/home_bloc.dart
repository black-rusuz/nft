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
          title: 'Мастер-класс',
          description: 'Задача заключается в том, чтобы сделать красиво',
          imageUrl: 'https://i.imgur.com/YDeLdaH.jpeg',
          dateTime: DateTime.now(),
          place: 'ул. Пушкина, д. Колотушкина',
          price: 1350,
          currency: Currency.digitalRouble,
        ),
        EventModel(
          title: 'Митап по инфобезу',
          description: 'Задача заключается в том, чтобы сделать красиво',
          imageUrl: 'https://i.imgur.com/jAsUVh4.jpeg',
          dateTime: DateTime.utc(2022, 11, 9),
          place: 'Офис в Замоскворечье',
          price: 3,
          currency: Currency.nft,
        ),
        EventModel(
          title: 'Курс по развитию личности',
          description: 'Задача заключается в том, чтобы сделать красиво',
          imageUrl: 'https://i.imgur.com/4WNgyr5.jpeg',
          dateTime: DateTime.parse('2023-07-20 20:00:00Z'),
          place: 'В главном офисе',
          price: 150,
          currency: Currency.digitalRouble,
        ),
      ],
    ));
  }
}
