import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/model/enums.dart';
import '../../../../data/model/user.dart';

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
        teamId: 0,
        name: 'Вадим Здарова',
        role: Role.employee,
        experience: 150,
        apiToken: '',
        position: 'Я не Вадим, я Алексей',
        imageUrl: 'https://i.imgur.com/CDcRoOA.jpeg',
      ),
      UserModel(
        teamId: 0,
        name: 'Гсюша Дьяченко',
        role: Role.admin,
        experience: 150,
        apiToken: '',
        position: 'Web-Makaka',
        imageUrl: 'https://i.imgur.com/FlbNrEh.jpeg',
      ),
      UserModel(
        teamId: 1,
        name: 'Иван Рубчинский',
        role: Role.boss,
        experience: 150,
        apiToken: '',
        position: 'Data-Satanist',
        imageUrl: 'https://i.imgur.com/U166AKX.jpeg',
      ),
      UserModel(
        teamId: 1,
        name: 'Русуз Чёрный',
        role: Role.employee,
        experience: 150,
        apiToken: '',
        position: 'God of Java',
        imageUrl: 'https://i.imgur.com/e5vUdDz.jpeg',
      ),
    ]));
  }
}
