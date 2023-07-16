// ignore_for_file: file_names, avoid_print

import 'package:tech_app/core/class/satusrequst.dart';
import 'package:tech_app/core/constant/routes.dart';
import 'package:tech_app/core/functions/handlingdata.dart';
import 'package:tech_app/core/services/services.dart';
import 'package:tech_app/data/datasource/remote/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  var isLoading = true.obs;
  login();
  goToSignUp();
  goTofrogetpassword();
  goTbottomBar();
}

class LoginControllerimp extends LoginController {
  LoginData logindata = LoginData(Get.find());
  late GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late String st;
  bool isshowpassword = true;
  Myservices myServices = Get.find();
  StatusRequst statusRequst = StatusRequst.none;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    st = '4';
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goTofrogetpassword() {
    Get.offNamed(AppRoute.frogetpassword);
  }

  @override
  goTbottomBar() {
    Get.offNamed(AppRoute.bottomNavigationBar);
  }

  @override
  login() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      StatusRequst statusRequst = StatusRequst.loading;
      var respone = await logindata.postdata(email.text, password.text, st);

      update();
      statusRequst = hadlingData(respone);
      if (statusRequst == StatusRequst.success) {
        if (respone['status'] == 'success') {
          myServices.sharedpreferences
              .setString("id", respone['data']['id'].toString());
          myServices.sharedpreferences
              .setString("email", respone['data']['email']);
          myServices.sharedpreferences
              .setString("username", respone['data']['user']);
          myServices.sharedpreferences
              .setString("phone", respone['data']['phone']);
          myServices.sharedpreferences.setString("step", "2");
          Get.offNamed(AppRoute.bottomNavigationBar);
        }
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Email Or Password Not Correct");
        statusRequst = StatusRequst.failure;
      }
    }
  }
}
