import 'package:dio/dio.dart';

abstract class IApi {
  late Dio? dio;
  late int? page;
  void defineHeaders();
  Future searchTwelveBreeds();
}
