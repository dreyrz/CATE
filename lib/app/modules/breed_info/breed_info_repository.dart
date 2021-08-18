import 'package:cate/app/data/interfaces/api_interface.dart';

class BreedInfoRepository {
  final IApi _api;

  BreedInfoRepository(this._api);
  Future<List<String>?> getOtherPhotos({required String breedId}) async {
    final response = await _api.getOtherPhotos(breedId);
    if (response == null) {
      return null;
    }
    List<String> imagesList = [];
    final list = List.from(response);

    list.forEach(
      (map) {
        imagesList.add(map["url"]);
      },
    );

    return imagesList;
  }
}
