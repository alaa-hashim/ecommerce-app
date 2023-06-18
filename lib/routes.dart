//import 'package:tech_app/core/constant/routes.dart';
//import 'package:tech_app/core/middleware/middleware.dart';
//import 'package:tech_app/view/screen/auth/forgetpassword.dart';
//import 'package:tech_app/view/screen/auth/login.dart';
//import 'package:tech_app/view/screen/auth/resstpassword.dart';
//import 'package:tech_app/view/screen/auth/signup.dart';
//import 'package:tech_app/view/screen/auth/successpage.dart';
//import 'package:tech_app/view/screen/auth/verfiycode.dart';
//import 'package:tech_app/view/screen/homepage.dart';
//import 'package:tech_app/view/screen/lang.dart';
//import 'package:tech_app/view/screen/navbarscreen.dart';
//import 'package:tech_app/view/screen/onboarding.dart';
//import 'package:tech_app/view/screen/items.dart';
//import 'package:tech_app/view/screen/productdetils.dart';
//import 'package:tech_app/view/screen/subcategory.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tech_app/view/screens/home.dart';
import 'package:tech_app/view/screens/product/productdetail.dart';
import 'package:tech_app/view/screens/product/productscreen.dart';
import 'package:tech_app/view/screens/subcategory.dart';

import 'core/constant/routes.dart';
import 'core/middleware/middleware.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Home(), middlewares: [MyMiddleware()]),
  //GetPage(name: AppRoute.login, page: () => const Login()),
  //GetPage(name: AppRoute.signup, page: () => const Signup()),
  //GetPage(
  //name: AppRoute.frogetpassword,
  //page: () => const Forgetpassword(),
  //),
  //GetPage(
  //name: AppRoute.resetpassword,
  //page: () => const Resetpassword(),
  //),
  //GetPage(
  //name: AppRoute.verfiycode,
  //page: () => const Verfiycode(),
  //),
  //GetPage(
  //name: AppRoute.successpage,
  //page: () => const Successpage(),
  //),
  //GetPage(
  // name: AppRoute.onboadring,
  //page: () => const OnBoarding(),
  //),
  //GetPage(
  //name: AppRoute.bottomNavigationBar,
  //page: () => const Navr(),
  //binding: BottomNavigationBinding()),
  GetPage(
    name: AppRoute.homepage,
    page: () => const Home(),
  ),
  GetPage(
    name: AppRoute.items,
    page: () => const Productscreen(),
  ),
  GetPage(
    name: AppRoute.productdetail,
    page: () => const Productdetial(),
  ),
  GetPage(
    name: AppRoute.subcategory,
    page: () => const Subcategory(),
  )
];
