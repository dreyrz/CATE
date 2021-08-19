import 'package:cate/app/widgets/custom_text.dart';
import 'package:cate/app/widgets/fade_network_image.dart';

import 'package:cate/core/utils/adapt.dart';
import 'package:cate/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/background.dart';
import '../../widgets/custom_drawer.dart';
import '../../widgets/custom_drawer_icon.dart';
import '../../widgets/line.dart';
import '../../widgets/skills.dart';
import 'breed_info_controller.dart';

class BreedInfoPage extends GetView<BreedInfoController> {
  const BreedInfoPage({Key? key}) : super(key: key);

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
          child: ListView(
            children: [
              SizedBox(
                height: Adapt.px(30),
              ),
              SizedBox(
                height: Adapt.px(230),
                width: Adapt.px(230),
                child: Stack(
                  children: [
                    Positioned(
                      top: Adapt.px(20),
                      left: Adapt.px(50),
                      child: Container(
                        width: Adapt.px(105),
                        height: Adapt.px(210),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(Adapt.px(4))),
                      ),
                    ),
                    Positioned(
                      child: Center(
                        child: FadeNetworkImage(
                          imageUrl: controller.cat.imageUrl,
                          height: Adapt.px(210),
                          width: Adapt.px(210),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Adapt.px(30),
              ),
              CustomText(
                controller.cat.name,
                weight: 2,
              ),
              SizedBox(
                height: Adapt.px(12),
              ),
              CustomText(
                controller.cat.description,
                weight: 3,
              ),
              SizedBox(
                height: Adapt.px(30),
              ),
              CustomText(
                Strings.temperament,
                weight: 3,
              ),
              Row(
                children: [
                  Expanded(
                    child: Line(
                      height: Adapt.px(3),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Adapt.px(12),
              ),
              CustomText(
                controller.cat.temperament,
                weight: 3,
              ),
              SizedBox(
                height: Adapt.px(30),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      CustomText(
                        Strings.origin,
                        weight: 3,
                      ),
                      SizedBox(
                        width: Adapt.px(150),
                        child: Line(
                          height: Adapt.px(3),
                        ),
                      ),
                      SizedBox(
                        height: Adapt.px(12),
                      ),
                      CustomText(
                        controller.cat.origin,
                        weight: 3,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      CustomText(
                        Strings.lifeSpan,
                        weight: 3,
                      ),
                      SizedBox(
                        width: Adapt.px(150),
                        child: Line(
                          height: Adapt.px(3),
                        ),
                      ),
                      SizedBox(
                        height: Adapt.px(12),
                      ),
                      CustomText(
                        controller.cat.lifeSpan,
                        weight: 3,
                      ),
                    ],
                  ),
                ],
              ),
              Skills(cat: controller.cat),
              CustomText(
                Strings.otherPhotos,
                weight: 3,
              ),
              Row(
                children: [
                  Expanded(
                    child: Line(
                      height: Adapt.px(3),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Adapt.px(25),
              ),
              SizedBox(
                height: Adapt.hp(50),
                child: controller.error
                    ? CustomText(
                        Strings.errorOcurred,
                        weight: 3,
                      )
                    : Obx(
                        () => GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 150,
                            childAspectRatio: 1,
                            crossAxisSpacing: Adapt.px(5),
                            mainAxisSpacing: Adapt.px(5),
                          ),
                          itemCount: controller.imagesList.length,
                          itemBuilder: (context, index) {
                            return FadeNetworkImage(
                                imageUrl: controller.imagesList[index]);
                          },
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
