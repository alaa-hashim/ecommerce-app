import 'package:tech_app/core/class/apihandler.dart';

import '../../../linkapi.dart';

class Homedata {
  ApiHandler apihandler;
  Homedata(
    this.apihandler,
  );
  postData() async {
    var respone = await apihandler.postData(AppLink.homepage, {});
    return respone.fold((l) => l, (r) => r);
  }
}
