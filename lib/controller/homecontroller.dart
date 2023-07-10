import 'package:get/get.dart';
import 'package:tech_app/core/class/handledata.dart';
import 'package:tech_app/core/services/services.dart';
import 'package:tech_app/data/datasource/remote/homedata.dart';

import '../core/class/satusrequst.dart';
import '../core/constant/routes.dart';

abstract class HomeController extends GetxController {
  void inialData();
  Future<void> getData();
  late String st;
  void goTosub(List category, int selectedCat, String categoryId);
}

class HomeControllermpl extends HomeController {
  Myservices myservices = Get.put(Myservices());
  String? username;
  Homedata homedata = Homedata(Get.find());

  List category = [];
  List subcategory = [];

  List product = [];

  late StatusRequst statusrequst;
  @override
  void inialData() {
    st = '1';
    username = myservices.sharedpreferences.getString("username");
  }

  // ignore: unnecessary_overrides
  @override
  void onInit() {
    inialData();
    getData();
    super.onInit();
    st = '1';
  }

  @override
  Future<void> getData() async {
    statusrequst = StatusRequst.loading;
    var response = await homedata.postData(st);
    statusrequst = handlingData(response);
    if (statusrequst == StatusRequst.success) {
      if (response['status'] == "success") {
        category.addAll(response['data']);
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
