import 'package:cate/app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'listing_controller.dart';

class ListingPage extends GetView<ListingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        endDrawer: CustomDrawer(),
        body: SafeArea(child: Text('ListingController')));
  }
}
