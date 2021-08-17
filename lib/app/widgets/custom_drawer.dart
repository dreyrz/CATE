import 'package:cate/app/modules/home/home_controller.dart';

import 'package:cate/core/utils/adapt.dart';
import 'package:cate/core/utils/strings.dart';
import 'package:cate/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_drawer_tile.dart';
import 'line.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({Key? key}) : super(key: key);

  final homeController = Get.find<HomeController>();

  void handleDrawerNavigation({required int index}) {
    switch (index) {
      case 0:
        homeController.currentDrawerIndex = 0;
        Get.offAndToNamed(Routes.home);
        break;
      case 1:
        homeController.currentDrawerIndex = 1;
        Get.offAndToNamed(Routes.listing);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Adapt.wp(50),
      child: Drawer(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: Adapt.px(20), vertical: Adapt.px(64)),
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: [
              CustomDrawerTile(
                selected: homeController.currentDrawerIndex == 0,
                label: Strings.home,
                onTap: () => handleDrawerNavigation(index: 0),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: Adapt.px(11), bottom: Adapt.px(19)),
                child: Line(),
              ),
              CustomDrawerTile(
                selected: homeController.currentDrawerIndex == 1,
                label: Strings.listing,
                onTap: () => handleDrawerNavigation(index: 1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
