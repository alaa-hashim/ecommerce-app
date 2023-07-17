import 'package:get/get.dart';

class WishlistController extends GetxController {
  Map isWished = {};
  setWished(id, val) {
    isWished[id] = val;
    update();
  }
}
