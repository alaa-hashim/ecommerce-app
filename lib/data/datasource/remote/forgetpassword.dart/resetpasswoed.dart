import 'package:tech_app/linkapi.dart';

import '../../../../core/class/apihandler.dart';

class ResetPassword {
  ApiHandler apihandler;
  ResetPassword(this.apihandler);
  postData(String email, String password) async {
    var respone = await apihandler.postData(
        AppLink.resetpassword, {email: "email", password: "password"});
    return respone.fold((l) => l, (r) => r);
  }
}
