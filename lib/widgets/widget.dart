import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TitleBar extends StatelessWidget {
  String pageTitle;
  Icon icon;
  String? trailingText;
  VoidCallback? onPressed;
  TitleBar(
      {required this.icon,
      required this.pageTitle,
      this.trailingText,
      this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                onPressed;
              },
              icon: icon),
          Text(pageTitle),
          Text(trailingText!),
        ],
      ),
    );
  }
}

class myTextField extends StatelessWidget {
  String? hintText;
  bool isPassword;
  Icon? prefixIcon;
  Icon? sufixIcon;
  TextEditingController myTextController;
  VoidCallback? sufixOnPressed;
  myTextField(
      {this.hintText,
      this.isPassword = false,
      this.prefixIcon,
      this.sufixIcon,
      this.sufixOnPressed,
      required this.myTextController});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: myTextController,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.green),
          ),
          fillColor: Colors.green.shade100,
          filled: true,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: sufixIcon != null
              ? IconButton(onPressed: sufixOnPressed, icon: sufixIcon!)
              : null,
        ),
      ),
    );
  }
}

class myProfilePic extends StatelessWidget {
  double radius;
  ImageProvider imageURL;
  myProfilePic({super.key,required this.radius,required this.imageURL});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.pink.shade100,
      radius: radius,
      backgroundImage: imageURL,
    );
  }
}
