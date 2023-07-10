// ignore_for_file: file_names, avoid_print, unused_import

import 'dart:convert';

import 'package:tech_app/core/constant/routes.dart';
import 'package:http/http.dart' as http;
import 'package:tech_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/handledata.dart';
import '../../core/class/satusrequst.dart';
import '../../data/datasource/remote/auth/signup.dart';

abstract class SignUpController extends GetxController {
  var isLoading = true.obs;
  signup();
  goToLogin();

  Myservices myServices = Get.find();
}

class SignUpControllerimp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  StatusRequst statusRequest = StatusRequst.none;

  SignData signupData = SignData(Get.find());

  List data = [];

  @override
  signup() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequst.loading;
      update();
      var response = await signupData.postdata(
          username.text, password.text, email.text, phone.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequst.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.login, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              title: "ُWarning",
              middleText: "Phone Number Or Email Already Exists");
          statusRequest = StatusRequst.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
