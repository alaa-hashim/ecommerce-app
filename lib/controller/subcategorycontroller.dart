import 'package:get/get.dart';

import '../core/class/satusrequst.dart';
import '../core/constant/routes.dart';
import '../core/functions/handlingdata.dart';
import '../data/datasource/remote/subcategory.dart';

abstract class SubcatController extends GetxController {
  inailData();
  changeCat(int val, catval);
  goTsub(String categoryId);
  goBack();
  goTproduct(List category, int selectedCat, String categoryId);
}

class SubcatControllerImp extends SubcatController {
  late String st;
  List category = [];
  int? selectedCat;
  List data = [];
  String? categoryId;

  late StatusRequst statusrequst;
  SubData subdata = SubData(Get.find());

  @override
  void onInit() {
    inailData();
    super.onInit();
  }

  @override
  inailData() {
    st = '3';
    category = Get.arguments['category'];
    selectedCat = Get.arguments['selectedCat'];
    categoryId = Get.arguments['categoryId'];
    goTsub(categoryId!);
  }

  @override
  changeCat(val, catval) {
    selectedCat = val;
    categoryId = catval;
    goTsub(categoryId!);
    update();
  }

  @override
  goTsub(categoryId) async {
    statusrequst = StatusRequst.loading;
    update(); // Notify UI about the loading state

    var response = await subdata.getData(categoryId, st);
    statusrequst = hadlingData(response);

    if (statusrequst == StatusRequst.success) {
      if (response['status'] == "success") {
        data.assignAll(response['data']); // Use assignAll to update the RxList
      } else {
        statusrequst = StatusRequst.failure;
      }
    }

    update(); // Notify UI about the new data and status
  }

  @override
  goTproduct(List category, int selectedCat, String categoryId) {
    Get.toNamed(AppRoute.items, arguments: {
      "category": category,
      "selectedCat": selectedCat,
      "categoryId": categoryId,
    });
  }

  @override
  goBack() {
    Get.offNamed(AppRoute.homepage);
  }
}
