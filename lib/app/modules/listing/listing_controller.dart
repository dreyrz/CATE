import 'package:cate/app/data/model/cat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'listing_repository.dart';

class ListingController extends GetxController {
  final ListingRepository repository;
  ListingController(this.repository);
  final ScrollController scrollController = ScrollController();
  final searchController = TextEditingController();

  final _endReached = false.obs;
  get endReached => this._endReached.value;
  set endReached(value) => this._endReached.value = value;

  final List<Cat> catBreedsList = [];
  final filteredCatBreedsList = <Cat>[].obs;
  @override
  void onInit() {
    getTwelveCatbreeds();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        getTwelveCatbreeds();
      }
    });

    super.onInit();
  }

  Future getTwelveCatbreeds() async {
    final response = await repository.getTwelveCatbreeds();
    if (response.length == 0) {
      endReached = true;
    } else {
      catBreedsList.addAll(response);
      filteredCatBreedsList.addAll(response);
    }
  }

  void searchBreed(String search) {
    if (search.isEmpty) {
      filteredCatBreedsList.assignAll(catBreedsList);
    } else {
      filteredCatBreedsList.assignAll(catBreedsList.where((breed) {
        final breedName = breed.name.toLowerCase();
        final searchLowerCase = search.toLowerCase();
        return breedName.contains(searchLowerCase);
      }).toList());
    }
  }
}
