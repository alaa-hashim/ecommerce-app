import 'package:get/get.dart';

import '../model/product.dart';

abstract class ProductDetailcontroller extends GetxController {
  late Product prodUct;
  intialData() {
    prodUct = Get.arguments['product'];
  }
}

class ProductDetailmpl extends ProductDetailcontroller {
  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}
