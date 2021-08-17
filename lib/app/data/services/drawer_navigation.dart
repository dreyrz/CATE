import 'package:cate/routes/routes.dart';
import 'package:get/get.dart';

class DrawerNavigationService extends GetxService {
  int? currentDrawerIndex;
  @override
  void onInit() {
    currentDrawerIndex = 0;
    super.onInit();
  }

  void handleDrawerNavigation({required int index}) {
    switch (index) {
      case 0:
        if (currentDrawerIndex != 0) {
          currentDrawerIndex = 0;
          Get.offAndToNamed(Routes.home);
        }
        break;
      case 1:
        if (currentDrawerIndex != 1) {
          currentDrawerIndex = 1;
          Get.offAndToNamed(Routes.listing);
        }
        break;
    }
  }
}
