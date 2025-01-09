import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_pattern_with_getx/controller/controller.dart';
import 'package:mvc_pattern_with_getx/view/profile_page.dart';
import 'package:mvc_pattern_with_getx/widgets/widget.dart';

class HomePage extends StatelessWidget {
  var controller = Get.put(loginPageController());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TitleBar(
            icon: Icon(Icons.arrow_back_ios_new),
            pageTitle: 'Account',
            trailingText: '',
            onPressed: () => Navigator.pop,
          ),
          Text(
            'Login to your Account',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 100,
          ),
          myTextField(
            myTextController: emailController,
            hintText: 'Email',
            prefixIcon: Icon(Icons.email),
          ),
          Obx(
            () => myTextField(
              myTextController: passwordController,
              hintText: 'Password',
              isPassword: controller.isPasswordField.value,
              prefixIcon: Icon(Icons.lock),
              sufixIcon: Icon(controller.isPasswordField.value
                  ? Icons.visibility
                  : Icons.visibility_off),
              sufixOnPressed: () {
                controller.isPasswordField.toggle();
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                controller.updateLogin(
                    emailController.text, passwordController.text);
                // Get.toNamed('/profile_page');
                Get.to(ProfilePage());
              },
              child: Text('Login'))
        ],
      ),
    );
  }
}
