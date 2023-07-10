import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BottomNavigationBarContorller extends GetxController {
  var tabIndex = 0;
  void changeTabindex(int index) {
    tabIndex = index;
    update();
  }
}
