import '../../../../core/class/apihandler.dart';
import '../../../../linkapi.dart';

class LoginData {
  ApiHandler apihandler;
  LoginData(this.apihandler);
  Future<dynamic> postdata(String email, String password, String st) async {
    var response = await apihandler.postData(
        AppLink.homepage, {"email": email, "password": password, "st": st});
    return response.fold((l) => l, (r) => r);
  }
}
