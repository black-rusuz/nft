import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'events_event.dart';
part 'events_state.dart';

@injectable
class EventsBloc extends Bloc<EventsEvent, EventsState> {
  EventsBloc() : super(EventsInitial()) {
    on<EventsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
