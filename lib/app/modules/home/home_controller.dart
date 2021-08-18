import 'package:cate/app/data/interfaces/drawer_navigation_interface.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  final IDrawerNavigation drawerNavigation;
  HomeController(
    this.drawerNavigation,
  );
}
