import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/model/user_model.dart';

part 'people_event.dart';
part 'people_state.dart';

@injectable
class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  PeopleBloc() : super(PeopleInitial()) {
    on<PeopleInit>(_init);
  }

  void _init(PeopleInit event, Emitter<PeopleState> emit) {
    emit(const PeopleSuccess(users: [
      UserModel(
        name: 'Name Second',
        position: '1C Position',
        imageUrl: 'https://i.imgur.com/e5vUdDz.jpeg',
      ),
      UserModel(
        name: 'Name Second',
        position: '1C Position',
        imageUrl: 'https://i.imgur.com/FlbNrEh.jpeg',
      ),
      UserModel(
        name: 'Name Second',
        position: '1C Position',
        imageUrl: 'https://i.imgur.com/U166AKX.jpeg',
      ),
      UserModel(
        name: 'Name Second',
        position: '1C Position',
        imageUrl: 'https://i.imgur.com/CDcRoOA.jpeg',
      ),
    ]));
  }
}
