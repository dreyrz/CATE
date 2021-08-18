import 'package:cate/app/widgets/background.dart';
import 'package:cate/app/widgets/breed_card.dart';
import 'package:cate/app/widgets/custom_drawer.dart';
import 'package:cate/app/widgets/custom_drawer_icon.dart';
import 'package:cate/app/widgets/custom_text.dart';
import 'package:cate/app/widgets/loading.dart';
import 'package:cate/app/widgets/search.dart';
import 'package:cate/core/utils/adapt.dart';
import 'package:cate/core/utils/strings.dart';
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
              Search(
                onChanged: (search) => controller.searchBreed(search),
              ),
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
                    itemCount: controller.isSearching
                        ? controller.filteredCatBreedsList.length
                        : controller.filteredCatBreedsList.length + 1,
                    itemBuilder: (context, index) {
                      return controller.error
                          ? CustomText(
                              Strings.errorOcurred,
                              weight: 3,
                            )
                          : index == controller.filteredCatBreedsList.length
                              ? Obx(() => controller.endReached
                                  ? Center(
                                      child: CustomText(
                                        Strings.endReached,
                                        weight: 3,
                                      ),
                                    )
                                  : controller.isSearching
                                      ? SizedBox()
                                      : Loading())
                              : BreedCard(
                                  cat: controller.filteredCatBreedsList[index]);
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
