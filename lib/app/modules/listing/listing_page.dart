import 'package:cate/app/widgets/background.dart';
import 'package:cate/app/widgets/cat_breed_card.dart';
import 'package:cate/app/widgets/custom_drawer.dart';
import 'package:cate/app/widgets/custom_drawer_icon.dart';
import 'package:cate/app/widgets/search.dart';
import 'package:cate/core/utils/adapt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'listing_controller.dart';

class ListingPage extends GetView<ListingController> {
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
            children: [
              Search(),
              SizedBox(
                height: Adapt.px(40),
              ),
              Expanded(
                child: Obx(
                  () => GridView.builder(
                    controller: controller.scrollController,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1,
                      crossAxisSpacing: Adapt.px(20),
                      mainAxisSpacing: Adapt.px(20),
                    ),
                    itemCount: controller.list.length,
                    itemBuilder: (context, index) {
                      return CatBreedCard(
                          url:
                              "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg");
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
