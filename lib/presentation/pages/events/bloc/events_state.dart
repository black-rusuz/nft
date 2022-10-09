part of 'events_bloc.dart';

abstract class EventsState extends Equatable {
  const EventsState();

  @override
  List<Object> get props => [];
}

class EventsInitial extends EventsState {}

class EventsSuccess extends EventsState {
  final List<EventModel> events;

  const EventsSuccess({required this.events});

  @override
  List<Object> get props => [
        ...events,
      ];
}
