import 'package:cate/app/data/interfaces/drawer_navigation_interface.dart';
import 'package:cate/routes/routes.dart';
import 'package:get/get.dart';

class DrawerNavigation extends GetxService implements IDrawerNavigation {
  late int? currentDrawerIndex;
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
          Get.offAllNamed(Routes.home);
        }
        break;
      case 1:
        if (currentDrawerIndex != 1) {
          currentDrawerIndex = 1;
          Get.offAllNamed(Routes.listing);
        }
        break;
    }
  }
}
