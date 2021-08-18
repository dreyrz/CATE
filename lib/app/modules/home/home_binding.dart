import 'package:cate/app/data/interfaces/drawer_navigation_interface.dart';

import 'package:cate/app/data/services/drawer_navigation.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IDrawerNavigation>(() => DrawerNavigation());

    Get.lazyPut<HomeController>(
        () => HomeController(Get.find<IDrawerNavigation>()));
  }
}
