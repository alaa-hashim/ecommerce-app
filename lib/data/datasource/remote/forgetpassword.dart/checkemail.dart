import 'package:tech_app/linkapi.dart';

import '../../../../core/class/apihandler.dart';

class CheckemailD {
  ApiHandler apihandler;
  CheckemailD(this.apihandler);
  postData(String email) async {
    var respone =
        await apihandler.postData(AppLink.checkemail, {email: "email"});
    return respone.fold((l) => l, (r) => r);
  }
}
