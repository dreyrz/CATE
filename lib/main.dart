import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/home/home_binding.dart';
import 'core/theme/light.dart';
import 'routes/pages.dart';

void main() {
  runApp(Cate());
}

class Cate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "C.A.T.E",
      debugShowCheckedModeBanner: false,
      theme: ThemeApp.light,
      initialBinding: HomeBinding(),
      getPages: Pages.all,
    );
  }
}
