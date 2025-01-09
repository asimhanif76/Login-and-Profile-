import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:mvc_pattern_with_getx/model/model.dart';

class loginPageController extends GetxController {
  var user = userModel(userName: '', userPassword: '');

  RxBool isPasswordField = true.obs;
  RxString email = ''.obs;
  RxString password = ''.obs;
  void updateLogin(_email, _password) {
    user.userName = _email;
    user.userPassword = _password;
    print("Email: ${user.userName} \nPassword: ${user.userPassword}");
  }
}

