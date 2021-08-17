import 'package:cate/app/data/services/drawer_navigation.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<DrawerNavigationService>(DrawerNavigationService());
    Get.put<HomeController>(HomeController());
  }
}
