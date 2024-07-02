// ignore_for_file: prefer_const_constructors

import 'package:cookeme/core/txt.dart';
import 'package:cookeme/Features/Authentication/forgot/Pages/Forget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class forgetPassword extends StatelessWidget {
  const forgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: () {
          Get.to(forgetP());
        },
        child: Container(
          child: Text(
            "Forget Password?",
            style: txt.forget(),
          ),
        ),
      ),
    );
  }
}
