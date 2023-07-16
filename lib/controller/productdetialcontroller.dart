import 'package:get/get.dart';

import '../model/product.dart';

abstract class ProductDetailcontroller extends GetxController {
  late Product prodUct;
  intialData() {
    prodUct = Get.arguments['product'];
  }

  goBack();
}

class ProductDetailmpl extends ProductDetailcontroller {
  int itemcount = 1;
  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  goBack() {
    Get.back();
  }

  add() {
    itemcount++;
    update();
  }

  remove() {
    if (itemcount > 1) {
      itemcount--;
    }
    update();
  }
}
