// ignore_for_file: avoid_renaming_method_parameters, avoid_print

import 'package:get/get.dart';
import 'package:tech_app/model/product.dart';

import '../core/class/handledata.dart';
import '../core/class/satusrequst.dart';
import '../data/datasource/remote/items.dart';

abstract class ProductController extends GetxController {
  intialData();
  changeCat(int val, String catval);
  getItems(String categoryid);
  goToPageProductDetails(Product product);
}

class ProductControllerImp extends ProductController {
  List categories = [];
  String? categoryId;
  int? selectedCat;

  ItemsData testData = ItemsData(Get.find());

  List data = [];

  late StatusRequst statusrequst;

  // MyServices myServices = Get.find();

  @override
  void onInit() {
    // search = TextEditingController();
    intialData();
    super.onInit();
  }

  @override
  intialData() {
    //categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedcat'];
    categoryId = Get.arguments['categoryId'];
    getItems(categoryId!);
  }

  @override
  changeCat(val, catval) {
    selectedCat = val;
    categoryId = catval;
    getItems(categoryId!);
    update();
  }

  @override
  getItems(categoryId) async {
    data.clear();
    statusrequst = StatusRequst.loading;
    var response = await testData.getData(categoryId);
    print("=============================== Controller $response ");
    statusrequst = handlingData(response);
    if (StatusRequst.success == statusrequst) {
      // Start backend
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusrequst = StatusRequst.failure;
      }
      // End
    }
    update();
  }

  @override
  goToPageProductDetails(product) {
    Get.toNamed("productdetail", arguments: {"product": Product});
  }
}


























// class FavoriteController extends GetxController {
//   Map isFavorite = {};

//   setFavorite(id, val) {
//     isFavorite[id] = val;
//     print(isFavorite[id]);
//     update();
//   }
// }