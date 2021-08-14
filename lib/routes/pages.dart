import 'package:cate/app/modules/home/home_binding.dart';
import 'package:cate/app/modules/home/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'routes.dart';

class Pages {
  static final all = [
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
