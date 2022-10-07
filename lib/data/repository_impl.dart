import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../domain/repository.dart';

@Singleton(as: Repository)
class RepositoryImpl extends Repository {
  final Dio client;

  RepositoryImpl({required this.client});
}
