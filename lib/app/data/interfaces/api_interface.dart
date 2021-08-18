import 'package:dio/dio.dart';

abstract class IApi {
  late Dio? dio;
  late int? page;
  void defineHeaders();
  Future getTwelveBreeds();
  Future getOtherPhotos(breedId);
}
