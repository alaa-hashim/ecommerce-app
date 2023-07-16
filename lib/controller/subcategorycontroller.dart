import 'package:get/get.dart';

import '../core/class/satusrequst.dart';
import '../core/constant/routes.dart';
import '../core/functions/handlingdata.dart';
import '../data/datasource/remote/subcategory.dart';

abstract class SubcatController extends GetxController {
  inailData();
  changeCat(int val, catval);
  geTsub(String subId);
  goBack();
  goTproduct(List category, int selectedCat, String subId);
}

class SubcatControllerImp extends SubcatController {
  late String st;
  List subcategory = [];
  int? selectedCat;
  List data = [];
  String? subId;

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
    subcategory = Get.arguments['category'];
    selectedCat = Get.arguments['selectedCat'];
    subId = Get.arguments['categoryId'];
    geTsub(subId!);
  }

  @override
  changeCat(val, catval) {
    selectedCat = val;
    subId = catval;
    geTsub(subId!);
    update();
  }

  @override
  geTsub(subId) async {
    data.clear();
    statusrequst = StatusRequst.loading;
    // Notify UI about the loading state

    var response = await subdata.getData(subId, st);
    statusrequst = hadlingData(response);

    if (statusrequst == StatusRequst.success) {
      if (response['status'] == "success") {
        data.addAll(response['data']); // Use assignAll to update the RxList
      } else {
        statusrequst = StatusRequst.failure;
      }
    }

    update(); // Notify UI about the new data and status
  }

  @override
  goTproduct(List category, int selectedCat, String subId) {
    Get.toNamed(AppRoute.items, arguments: {
      "subcat": category,
      "selectedsub": selectedCat,
      "subId": subId,
    });
  }

  @override
  goBack() {
    Get.offNamed(AppRoute.bottomNavigationBar);
  }
}
