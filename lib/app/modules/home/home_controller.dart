import 'package:get/get.dart';

class HomeController extends GetxController {
  final _currentDrawerIndex = 0.obs;
  get currentDrawerIndex => this._currentDrawerIndex.value;
  set currentDrawerIndex(value) => this._currentDrawerIndex.value = value;
}
