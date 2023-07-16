import '../../../core/class/apihandler.dart';
import '../../../linkapi.dart';

class CartData {
  ApiHandler apihandler;
  CartData(this.apihandler);
  addData(Map data) async {
    var respone = await apihandler.postData(AppLink.homepage, {});
    return respone.fold((l) => l, (r) => r);
  }

  deleteData(Map data) async {
    var respone = await apihandler.postData(AppLink.homepage, {});
    return respone.fold((l) => l, (r) => r);
  }

  getcountData(Map data) async {
    var respone = await apihandler.postData(AppLink.homepage, {});
    return respone.fold((l) => l, (r) => r);
  }

  viewData(String st, String userid) async {
    var respone = await apihandler
        .postData(AppLink.homepage, {"st": st, "userid": userid});
    return respone.fold((l) => l, (r) => r);
  }
}
