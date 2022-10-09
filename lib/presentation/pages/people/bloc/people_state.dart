part of 'people_bloc.dart';

abstract class PeopleState extends Equatable {
  const PeopleState();

  @override
  List<Object> get props => [];
}

class PeopleInitial extends PeopleState {}

class PeopleSuccess extends PeopleState {
  final List<UserModel> users;

  const PeopleSuccess({required this.users});

  @override
  List<Object> get props => [
        ...users,
      ];
}
