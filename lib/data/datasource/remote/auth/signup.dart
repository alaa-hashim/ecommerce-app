import '../../../../core/class/apihandler.dart';
import '../../../../linkapi.dart';

class SignData {
  ApiHandler apihandler;
  SignData(this.apihandler);
  postdata(String email, String password, String username, String phone) async {
    var response = await apihandler.postData(AppLink.signup, {
      "email": email,
      "password": password,
      "username": username,
      "phone": phone
    });
    return response.fold((l) => l, (r) => r);
  }
}
