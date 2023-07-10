import 'package:tech_app/linkapi.dart';

import '../../../core/class/apihandler.dart';

class SubData {
  ApiHandler apihandler;
  SubData(this.apihandler);
  getData(String id, String st) async {
    var respone =
        await apihandler.postData(AppLink.homepage, {"id": id, "st": st});
    return respone.fold((l) => l, (r) => r);
  }
}
