import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class fogcontroller extends GetxController {
  TextEditingController emcF = TextEditingController();

  @override
  void dispose() {
    emcF.dispose();
    super.dispose();
  }
  

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<void> forget() async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: emcF.text.trim());
      Get.snackbar("Sucess", "Look your GMail");
    } catch (e) {
      Get.snackbar("Faild", e.toString());
    }
  }
}
