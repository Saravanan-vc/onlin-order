// ignore_for_file: prefer_const_constructors

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Pages/Home_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class controller extends GetxController {
  TextEditingController EmailC = TextEditingController();
  TextEditingController PhoneC = TextEditingController();

  @override
  void dispose() {
    EmailC.dispose();
    PhoneC.dispose();
    super.dispose();
  }

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<void> check() async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: EmailC.text,
        password: PhoneC.text,
      );
      Get.off(homeScreen());
      Get.snackbar("Sucess", "Login is Sucess");
    } catch (e) {
      Get.snackbar("Faild", e.toString());
    }
  }
}
