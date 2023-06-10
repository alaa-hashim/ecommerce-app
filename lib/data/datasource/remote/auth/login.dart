import '../../../../core/class/apihandler.dart';
import '../../../../linkapi.dart';

class LoginData {
  ApiHandler apihandler;
  LoginData(this.apihandler);
  Future<dynamic> postdata(String email, String password) async {
    var response = await apihandler
        .postData(AppLink.login, {"email": email, "password": password});
    return response.fold((l) => l, (r) => r);
  }
}
