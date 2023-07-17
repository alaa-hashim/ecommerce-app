import 'package:tech_app/core/class/apihandler.dart';

import '../../../linkapi.dart';

class Homedata {
  ApiHandler apihandler;
  Homedata(
    this.apihandler,
  );
  postData(String st) async {
    var respone = await apihandler.postData(AppLink.homepage, {"st": st});
    return respone.fold((l) => l, (r) => r);
  }

  getData(String ts, String id) async {
    var respone =
        await apihandler.postData(AppLink.homepage, {"st": ts, "userid": id});
    return respone.fold((l) => l, (r) => r);
  }
}
