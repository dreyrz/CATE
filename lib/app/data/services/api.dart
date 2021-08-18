import 'package:cate/app/data/interfaces/api_interface.dart';
import 'package:cate/core/utils/env.dart';
import 'package:dio/dio.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

class Api extends GetxService implements IApi {
  late Dio? dio;
  late int? page;
  Api(this.dio);
  @override
  void defineHeaders() {
    page = 0;
    dio!.options.headers["x-api-key"] = Env.apiKey;
  }

  @override
  void onInit() {
    defineHeaders();
    super.onInit();
  }

  @override
  Future searchTwelveBreeds() async {
    final response = await dio!.get(
      Env.apiUrl + "breeds",
      queryParameters: {
        "limit": 12,
        "page": page,
      },
    );

    page = page! + 1;
    return response.data;
  }
}
