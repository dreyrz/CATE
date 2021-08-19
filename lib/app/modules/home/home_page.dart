import 'package:cate/app/widgets/background.dart';
import 'package:cate/app/widgets/button.dart';
import 'package:cate/app/widgets/custom_drawer.dart';
import 'package:cate/app/widgets/custom_drawer_icon.dart';
import 'package:cate/app/widgets/custom_text.dart';
import 'package:cate/core/utils/adapt.dart';
import 'package:cate/core/utils/images.dart';

import 'package:cate/core/utils/strings.dart';

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
              Spacer(
                flex: 25,
              ),
              CustomText(Strings.cateMission),
              Spacer(
                flex: 20,
              ),
              CustomText(
                Strings.cateMissionDescription,
                weight: 3,
              ),
              Spacer(
                flex: 20,
              ),
              Button(
                label: Strings.knowTheList,
                onPressed: () => controller.drawerNavigation
                    .handleDrawerNavigation(index: 1),
              ),
              Spacer(
                flex: 35,
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
