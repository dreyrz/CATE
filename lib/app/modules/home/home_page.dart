import 'package:cate/app/data/services/drawer_navigation.dart';
import 'package:cate/app/widgets/background.dart';
import 'package:cate/app/widgets/button.dart';
import 'package:cate/app/widgets/custom_drawer.dart';
import 'package:cate/app/widgets/custom_drawer_icon.dart';
import 'package:cate/app/widgets/custom_text.dart';
import 'package:cate/core/utils/adapt.dart';
import 'package:cate/core/utils/images.dart';

import 'package:cate/core/utils/strings.dart';
import 'package:cate/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          actions: [
            CustomDrawerIcon(),
          ],
        ),
        endDrawer: CustomDrawer(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Adapt.px(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: Adapt.px(64),
              ),
              CustomText(Strings.cateMission),
              SizedBox(
                height: Adapt.px(20),
              ),
              CustomText(
                Strings.cateMissionDescription.toUpperCase(),
                weight: 2,
              ),
              SizedBox(
                height: Adapt.px(20),
              ),
              Button(
                label: Strings.knowTheList,
                onPressed: () => controller.drawerNavigationService
                    .handleDrawerNavigation(index: 1),
              ),
              SizedBox(
                height: Adapt.px(45),
              ),
              Image(
                image: AssetImage(Images.CATeLogo),
              )
            ],
          ),
        ),
      ),
    );
  }
}
