import 'package:get/get.dart';
import 'package:tech_app/core/class/handledata.dart';
import 'package:tech_app/core/services/services.dart';
import 'package:tech_app/data/datasource/remote/homedata.dart';

import '../core/class/satusrequst.dart';
import '../core/constant/routes.dart';

abstract class HomeController extends GetxController {
  void inialData();
  Future<void> getData();
  void goTosub(List category, int selectedCat, String categoryId);
}

class HomeControllermpl extends HomeController {
  Myservices myservices = Get.find();
  String? username;
  Homedata homedata = Homedata(Get.find());

  List category = [];
  List subcategory = [];

  List product = [];
  late StatusRequst statusrequst;
  @override
  void inialData() {
    username = myservices.sharedpreferences.getString("username");
  }

  // ignore: unnecessary_overrides
  @override
  void onInit() {
    inialData();
    getData();
    super.onInit();
  }

  @override
  Future<void> getData() async {
    statusrequst = StatusRequst.loading;
    var response = await homedata.postData();
    statusrequst = handlingData(response);
    if (statusrequst == StatusRequst.success) {
      if (response['status'] == "success") {
        category.addAll(response['categories']);
        // subcategory.addAll(response['subcategory']);
        product.addAll(response['product']);
      } else {
        statusrequst = StatusRequst.failure;
      }
    }
    update();
  }

  @override
  void goTosub(category, selectedCat, categoryId) {
    Get.offNamed(AppRoute.subcategory, arguments: {
      "category": category,
      "selectedCat": selectedCat,
      "categoryId": categoryId,
    });
  }
}
