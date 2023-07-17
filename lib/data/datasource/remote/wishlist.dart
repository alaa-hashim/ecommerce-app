import '../../../core/class/apihandler.dart';
import '../../../linkapi.dart';

class WishData {
  ApiHandler apihandler;
  WishData(this.apihandler);
  getData(String id, String st, String userid) async {
    var respone = await apihandler
        .postData(AppLink.homepage, {"id": id, "st": st, "userid": userid});
    return respone.fold((l) => l, (r) => r);
  }

  getRecommned(String id, String subid, String st) async {
    var respone = await apihandler
        .postData(AppLink.homepage, {"id": id, "st": st, "subid": id});
    return respone.fold((l) => l, (r) => r);
  }
}
