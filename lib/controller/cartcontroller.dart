// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'dart:convert';

import '../core/class/handledata.dart';
import '../core/class/satusrequst.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/cart.dart';
import '../model/cart.dart';

class Cartcontroller extends GetxController {
  CartData cartData = CartData(Get.find());
  Myservices myservices = Get.put(Myservices());
  late StatusRequst statusrequst;
  late String st;
  List data = [];
  double cartPrice = 0.0;
  int cartcount = 0;
  @override
  void onInit() {
    st = '6';
    view();
    super.onInit();
  }

  Future<void> view() async {
    statusrequst = StatusRequst.loading;
    var response = await cartData.viewData(
        myservices.sharedpreferences.getString("id")!, st);
    statusrequst = handlingData(response);
    if (statusrequst == StatusRequst.success) {
      if (response['status'] == "success") {
        if (response['data']['status'] == 'success') {
          List dataresponse = response['data'];
          Map dataresponsecountprice = response['countprice'];
          data.clear();
          data.addAll(dataresponse.map((e) => Cart.fromJson(e)));
          cartcount = int.parse(dataresponsecountprice['totalcount']);
          cartPrice = double.parse(dataresponsecountprice['totalprice']);
          print(cartPrice);
        }
      } else {
        statusrequst = StatusRequst.failure;
      }
      // End
    }
    update();
  }
}
