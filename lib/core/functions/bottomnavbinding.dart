import 'package:get/get.dart';

import '../../controller/botttombarcontroller.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationBarContorller>(
        () => BottomNavigationBarContorller());

    /*  Get.lazyPut<CategroyController>(() => CategroyController());
    Get.lazyPut<ExploreController>(() => ExploreController()); */
  }
}
