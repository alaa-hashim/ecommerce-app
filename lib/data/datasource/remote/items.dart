import '../../../core/class/apihandler.dart';
import '../../../linkapi.dart';

class ItemsData {
  ApiHandler apihandler;
  ItemsData(this.apihandler);
  getData(String id) async {
    var respone = await apihandler.postData(AppLink.items, {"id": id});
    return respone.fold((l) => l, (r) => r);
  }

  getRecommned(String id, String st) async {
    var respone =
        await apihandler.postData(AppLink.homepage, {"id": id, "st": st});
    return respone.fold((l) => l, (r) => r);
  }
}
