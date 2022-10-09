import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../domain/repository.dart';
import 'model/event.dart';

@Singleton(as: Repository)
class RepositoryImpl extends Repository {
  final Dio client;

  RepositoryImpl({required this.client});

  static const String url = 'http://192.168.1.217';

  @override
  Future<List<EventModel>> getEvents() async {
    final response = await client.get('$url/events');
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((e) => EventModel.fromJson(e))
          .toList();
    } else {
      throw Exception('HTTP NOT 200');
    }
  }
}
