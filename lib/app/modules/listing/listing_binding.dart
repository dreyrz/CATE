import 'package:cate/app/data/interfaces/api_interface.dart';
import 'package:cate/app/data/services/api.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'listing_controller.dart';
import 'listing_repository.dart';

class ListingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dio>(() => Dio());
    Get.lazyPut<IApi>(() => Api(Get.find<Dio>()));
    Get.lazyPut<ListingController>(
      () => ListingController(ListingRepository(Get.find<IApi>())),
    );
  }
}
