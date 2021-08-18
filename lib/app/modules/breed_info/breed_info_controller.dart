import 'package:cate/app/data/model/cat.dart';
import 'package:get/get.dart';

import 'breed_info_repository.dart';

class BreedInfoController extends GetxController {
  final BreedInfoRepository repository;
  late Cat cat;
  BreedInfoController(this.repository);

  final imagesList = <String>[].obs;
  bool error = false;
  bool loading = false;
  @override
  void onInit() {
    cat = Get.arguments;
    getOtherPhotos();
    super.onInit();
  }

  Future getOtherPhotos() async {
    loading = true;
    error = false;
    final response = await repository.getOtherPhotos(breedId: cat.id);
    if (response != null) {
      imagesList.addAll(response);
    } else {
      error = true;
    }
    loading = false;
  }
}
