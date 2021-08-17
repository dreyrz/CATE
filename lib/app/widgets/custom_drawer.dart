import 'package:cate/app/data/services/drawer_navigation.dart';
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

  final drawerNavigation = Get.find<DrawerNavigationService>();

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
                selected: drawerNavigation.currentDrawerIndex == 0,
                label: Strings.home,
                onTap: () => drawerNavigation.handleDrawerNavigation(index: 0),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: Adapt.px(11), bottom: Adapt.px(19)),
                child: Line(),
              ),
              CustomDrawerTile(
                selected: drawerNavigation.currentDrawerIndex == 1,
                label: Strings.listing,
                onTap: () => drawerNavigation.handleDrawerNavigation(index: 1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
