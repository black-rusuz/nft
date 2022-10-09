import '../data/model/event.dart';

abstract class Repository {
  Future<List<EventModel>> getEvents();
}
