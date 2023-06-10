import 'package:tech_app/core/constant/appthem.dart';
import 'package:tech_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? languagne;
  Myservices myServices = Get.find();
  ThemeData appTheme = themeEnglish;
  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedpreferences.setString("lang", langcode);
    appTheme = langcode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedlang = myServices.sharedpreferences.getString("lang");
    if (sharedlang == "ar") {
      languagne = const Locale("ar");
      appTheme = themeArabic;
    } else if (sharedlang == "en") {
      languagne = const Locale("en");
      appTheme = themeEnglish;
    } else {
      languagne = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
