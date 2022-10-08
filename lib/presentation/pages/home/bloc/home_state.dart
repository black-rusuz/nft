part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeSuccess extends HomeState {
  final double nftValue;
  final double drValue;
  final List<EventModel> events;

  const HomeSuccess({
    required this.nftValue,
    required this.drValue,
    required this.events,
  });

  @override
  List<Object> get props => [
        nftValue,
        drValue,
        ...events,
      ];
}
