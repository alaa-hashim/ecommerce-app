import 'package:tech_app/linkapi.dart';

import '../../../core/class/apihandler.dart';

class SubData {
  ApiHandler apihandler;
  SubData(this.apihandler);
  getData(String id) async {
    var respone = await apihandler.postData(AppLink.subcategories, {"id": id});
    return respone.fold((l) => l, (r) => r);
  }
}
