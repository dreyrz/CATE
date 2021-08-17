import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'listing_repository.dart';

class ListingController extends GetxController {
  final ListingRepository repository;
  ListingController(this.repository);
  final ScrollController scrollController = ScrollController();
  final list = <int>[].obs;

  @override
  void onInit() {
    list.assignAll(List.generate(10, (index) => index));
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        getMoreData();
      }
    });
    super.onInit();
  }

  void getMoreData() {
    list.addAll(List.generate(10, (index) => list.length + index + 1));
    print(list.length);
  }
}
