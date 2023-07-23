// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_app/core/services/services.dart';

import '../core/class/handledata.dart';
import '../core/class/satusrequst.dart';
import '../data/datasource/remote/wishlist.dart';

class WishlistController extends GetxController {
  late String st;
  late String ts;

  List data = [];
  Myservices myservices = Get.put(Myservices());
  WishData wishData = WishData(Get.find());

  late StatusRequst statusrequst;
  Map isWished = {};
  setWished(id, val) {
    isWished[id] = val;
    update();
  }

  @override
  void onInit() {
    st = '11';
    ts = '12';

    super.onInit();
  }

  addwish(itemId) async {
    data.clear();
    statusrequst = StatusRequst.loading;
    var response = await wishData.addData(
      itemId.toString(),
      st,
      myservices.sharedpreferences.getString("id")!,
    );
    print("=============================== Controller $response ");
    statusrequst = handlingData(response);
    if (StatusRequst.success == statusrequst) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(title: "اشعار", messageText: Text("39".tr));
      } else {
        statusrequst = StatusRequst.failure;
      }
      // End
    }
    update();
  }

  deletewish(itemId) async {
    data.clear();
    statusrequst = StatusRequst.loading;
    var response = await wishData.deleteData(
        itemId, myservices.sharedpreferences.getString("id")!, ts);
    print("=============================== Controller $response ");
    statusrequst = handlingData(response);
    if (StatusRequst.success == statusrequst) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(title: "اشعار", messageText: Text("39".tr));
      } else {
        statusrequst = StatusRequst.failure;
      }
      // End
    }
    update();
  }
}
