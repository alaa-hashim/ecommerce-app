import 'package:tech_app/core/constant/routes.dart';
import 'package:tech_app/core/services/services.dart';
import 'package:tech_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Onboatdingcontroller extends GetxController {
  next();
  onPageChanged(int index) {}
}

class Onboatdingcontrollerimp extends Onboatdingcontroller {
  late PageController pageController;
  int currentPage = 0;
  Myservices myServices = Get.find();
  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      myServices.sharedpreferences.setString("step", "1");
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
