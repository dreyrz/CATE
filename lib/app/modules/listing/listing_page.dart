import 'package:cate/app/widgets/background.dart';
import 'package:cate/app/widgets/custom_drawer.dart';
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
        appBar: AppBar(),
        endDrawer: CustomDrawer(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Adapt.px(20)),
          child: Column(
            children: [
              Search(),
            ],
          ),
        ),
      ),
    );
  }
}
