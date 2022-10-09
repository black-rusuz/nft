import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/model/enums.dart';
import '../../../../data/model/event.dart';
import '../../../../domain/repository.dart';

part 'events_event.dart';
part 'events_state.dart';

@injectable
class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final Repository _repository;

  EventsBloc(this._repository) : super(EventsInitial()) {
    on<EventsInit>(_init);
  }

  void _init(EventsInit event, Emitter<EventsState> emit) async {
    //final events = await _repository.getEvents();
    //emit(EventsSuccess(events: events));

    emit(EventsSuccess(events: [
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
    ]));
  }
}
