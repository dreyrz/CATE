import 'package:get/get.dart';

import 'listing_controller.dart';
import 'listing_repository.dart';

class ListingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListingController>(
      () => ListingController(
        ListingRepository(),
      ),
    );
  }
}
