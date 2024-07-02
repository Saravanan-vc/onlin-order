import 'package:cookeme/Features/Authentication/Sign_up/View/Pages/sign_up.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(signUp());
      },
      child: Container(
        child: Text(
          "SignUp",
          style: txt.forget(),
        ),
      ),
    );
  }
}
