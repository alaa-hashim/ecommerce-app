// ignore_for_file: unrelated_type_equality_checks

import 'package:tech_app/core/constant/routes.dart';
import 'package:tech_app/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  Myservices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedpreferences.getString("step") == "2") {
      return const RouteSettings(name: AppRoute.bottomNavigationBar);
    }
    if (myServices.sharedpreferences.getString("step") == "1") {
      return const RouteSettings(name: AppRoute.login);
    }
    return null;
  }
}
