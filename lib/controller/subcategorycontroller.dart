import 'package:get/get.dart';

abstract class SubcatController extends GetxController {
  inailData();
  changeCat(int val);
}

class SubcatControllerImp extends SubcatController {
  List category = [];
  int? selectedCat;

  @override
  void onInit() {
    inailData();
    super.onInit();
  }

  @override
  inailData() {
    category = Get.arguments['category'];
    selectedCat = Get.arguments['selectedCat'];
  }

  @override
  changeCat(val) {
    selectedCat = val;
    update();
  }
}
