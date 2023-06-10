import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_app/core/localization/changelocal.dart';
import 'package:tech_app/core/localization/translation.dart';
import 'package:tech_app/core/services/services.dart';
import 'package:tech_app/routes.dart';
import 'bindings/inibindings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Myservices().initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: controller.languagne,
      theme: controller.appTheme,
      getPages: routes,
      initialBinding: Inibindings(),
    );
  }
}
