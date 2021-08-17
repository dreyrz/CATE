import 'package:get/get.dart';

import 'listing_repository.dart';

class ListingController extends GetxController {
  final ListingRepository repository;
  ListingController(this.repository);

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
