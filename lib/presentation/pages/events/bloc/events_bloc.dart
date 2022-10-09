import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

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
    final events = await _repository.getEvents();
    emit(EventsSuccess(events: events));
  }
}
