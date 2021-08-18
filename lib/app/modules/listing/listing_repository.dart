import 'package:cate/app/data/interfaces/api_interface.dart';
import 'package:cate/app/data/model/cat.dart';

class ListingRepository {
  final IApi _api;
  ListingRepository(this._api);

  Future<List<Cat>?> getTwelveCatbreeds() async {
    final response = await _api.getTwelveBreeds();
    if (response == null) {
      return null;
    }
    List<Cat> catBreedsList = [];
    final list = List.from(response);

    list.forEach(
      (map) {
        catBreedsList.add(Cat.fromMap(map));
      },
    );
    return catBreedsList;
  }
}
