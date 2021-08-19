import 'package:cate/app/data/model/cat.dart';
import 'package:cate/app/data/services/api.dart';
import 'package:cate/app/modules/listing/listing_controller.dart';
import 'package:cate/app/modules/listing/listing_repository.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:get/get.dart';
import 'package:mocktail/mocktail.dart';

import 'mock/mock_values.dart';

class ApiMock extends Mock implements Api {}

class ListingRepositoryMock extends Mock implements ListingRepository {}

void main() {
  late ListingRepositoryMock listingRepositoryMock;
  setUp(() {
    Get.testMode = true;
    listingRepositoryMock = ListingRepositoryMock();
  });
  injectDependencies() {
    Get.lazyPut<ListingController>(
        () => ListingController(listingRepositoryMock));
  }

  group(
    "ListingController tests =>",
    () {
      test("Verify if controller is initialized", () {
        injectDependencies();
        final controller = Get.find<ListingController>();
        expect(controller.initialized, true);
        Get.reset();
      });
      test(
        "Should return a list of type Cat with 12 items",
        () async {
          injectDependencies();
          final controller = Get.find<ListingController>();
          when(() => listingRepositoryMock.getTwelveCatbreeds()).thenAnswer(
            (_) => Future.value(MockValues.mockedApiGetTwelveCatBreeds
                .map((map) => Cat.fromMap(map))
                .toList()),
          );

          expect(controller.catBreedsList, isA<List<Cat>>());

          await controller.getTwelveCatbreeds();
          final list = controller.catBreedsList;

          expect(list.length, 12);
          Get.reset();
        },
      );
      test(
        "The list should contain the query of the search",
        () async {
          injectDependencies();
          final controller = Get.find<ListingController>();
          final search = "Abyssinian";
          when(() => listingRepositoryMock.getTwelveCatbreeds()).thenAnswer(
            (_) => Future.value(MockValues.mockedApiGetTwelveCatBreeds
                .map((map) => Cat.fromMap(map))
                .toList()),
          );
          await controller.getTwelveCatbreeds();
          controller.searchBreed(search);
          expect(controller.filteredCatBreedsList.any((cat) {
            return cat.name.toLowerCase() == search.toLowerCase();
          }), true);
          Get.reset();
        },
      );
    },
  );
}
