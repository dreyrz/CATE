import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import 'app/modules/home/home_binding.dart';
import 'core/theme/light.dart';
import 'routes/pages.dart';

Future main() async {
  await dotenv.load(fileName: '.env');
  runApp(CATe());
}

class CATe extends StatelessWidget {
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
