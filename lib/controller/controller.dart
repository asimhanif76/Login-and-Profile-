import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:mvc_pattern_with_getx/model/model.dart';

class LoginPageController extends GetxController {
  var user = userLoginModel(
          email: 'asimhanif@gmail.com',
          userPassword: '12345',
          imageUrl:
              'https://play-lh.googleusercontent.com/vco-LT_M58j9DIAxlS1Cv9uvzbRhB6cYIZJS7ocZksWRqoEPat_QXb6fVFi77lciJZQ=w526-h296-rw')
      .obs;

  RxBool isPasswordField = true.obs;
  // RxString email = ''.obs;
  // RxString password = ''.obs;
  void updateLogin(_email, _password) {
    user.value.email = _email;
    user.value.userPassword = _password;
    print("Email: ${user.value.email} \nPassword: ${user.value.userPassword}");

    // user.value =
    //     userLoginModel(userName: _email, userPassword: _password, imageUrl: '');

    // print(
    //     "Email: ${user.value.userName} \nPassword: ${user.value.userPassword}");
  }

  void updateProfilePic(imageUrl) {
    user.value.imageUrl = imageUrl;
    print('${user.value.imageUrl}');
    update();
    refresh();
  }
}
