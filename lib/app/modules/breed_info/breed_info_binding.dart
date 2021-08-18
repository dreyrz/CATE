import 'package:cate/app/data/interfaces/api_interface.dart';
import 'package:cate/app/data/services/api.dart';
import 'package:cate/app/modules/breed_info/breed_info_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'breed_info_controller.dart';

class BreedInfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dio>(() => Dio());
    Get.lazyPut<IApi>(() => Api(Get.find<Dio>()));
    Get.lazyPut<BreedInfoRepository>(
        () => BreedInfoRepository(Get.find<IApi>()));
    Get.lazyPut<BreedInfoController>(
        () => BreedInfoController(Get.find<BreedInfoRepository>()));
  }
}
