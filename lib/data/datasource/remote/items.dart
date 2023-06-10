import '../../../core/class/apihandler.dart';
import '../../../linkapi.dart';

class ItemsData {
  ApiHandler apihandler;
  ItemsData(this.apihandler);
  getData(String id) async {
    var respone = await apihandler.postData(AppLink.items, {"id": id});
    return respone.fold((l) => l, (r) => r);
  }
}
