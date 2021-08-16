import 'package:cate/app/widgets/button.dart';
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
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.CATeBackground),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.dehaze),
              ),
            ],
          ),
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
                  onPressed: () {},
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
      ],
    );
  }
}
