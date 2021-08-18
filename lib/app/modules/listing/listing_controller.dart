import 'package:cate/app/data/model/cat.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'listing_repository.dart';

class ListingController extends GetxController {
  final ListingRepository repository;
  ListingController(this.repository);
  final ScrollController scrollController = ScrollController();

  final _endReached = false.obs;
  get endReached => this._endReached.value;
  set endReached(value) => this._endReached.value = value;

  final _isSearching = false.obs;
  get isSearching => this._isSearching.value;
  set isSearching(value) => this._isSearching.value = value;

  final _loading = false.obs;
  get loading => this._loading.value;
  set loading(value) => this._loading.value = value;

  final List<Cat> catBreedsList = [];
  final filteredCatBreedsList = <Cat>[].obs;
  bool error = false;

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

    if (response != null) {
      if (response.length == 0) {
        endReached = true;
      } else {
        catBreedsList.addAll(response);
        filteredCatBreedsList.addAll(response);
      }
    } else {
      error = true;
    }
  }

  void searchBreed(String search) {
    isSearching = true;
    if (search.isEmpty) {
      filteredCatBreedsList.assignAll(catBreedsList);
      isSearching = false;
    } else {
      filteredCatBreedsList.assignAll(catBreedsList.where((breed) {
        final breedName = breed.name.toLowerCase();
        final searchLowerCase = search.toLowerCase();

        return breedName.contains(searchLowerCase);
      }).toList());
    }
  }
}
