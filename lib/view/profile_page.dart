import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_pattern_with_getx/controller/controller.dart';
import 'package:mvc_pattern_with_getx/widgets/widget.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  LoginPageController controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Obx(
            () => myProfilePic(
              radius: 50,
              imageURL: controller.user.value.imageUrl,
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'User Name : Asim Hanif',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              )),
          Container(
              alignment: Alignment.centerLeft,
              child: Obx(
                () => Text(
                  'Email : ${controller.user.value.email}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              )),
          Container(
              alignment: Alignment.centerLeft,
              child: Obx(
                () => Text(
                  'Password : ${controller.user.value.userPassword}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              )),
          ElevatedButton(
              onPressed: () {
                controller.updateProfilePic(
                    'https://play-lh.googleusercontent.com/jInS55DYPnTZq8GpylyLmK2L2cDmUoahVacfN_Js_TsOkBEoizKmAl5-p8iFeLiNjtE=w526-h296-rw');
                setState(() {});
              },
              child: Text('Update Image')),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    print('Refresh');
                  });
                },
                child: Text('Refresh')),
          )
        ],
      ),
    ));
  }
}
