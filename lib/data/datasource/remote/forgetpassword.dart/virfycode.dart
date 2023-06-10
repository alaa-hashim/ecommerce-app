import 'package:tech_app/linkapi.dart';

import '../../../../core/class/apihandler.dart';

class VerfiycodeFP {
  ApiHandler apihandler;
  VerfiycodeFP(this.apihandler);
  postData(String email, String verfiycode) async {
    var respone = await apihandler.postData(
        AppLink.verfiycode, {email: "email", verfiycode: "verfycode"});
    return respone.fold((l) => l, (r) => r);
  }
}
