import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class signcontroller extends GetxController {
  bool male = false;
  bool female = false;
  TextEditingController emc = TextEditingController();
  TextEditingController pac = TextEditingController();

  @override
  void dispose() {
    emc.dispose();
    pac.dispose();
    super.dispose();
  }

  FirebaseAuth firebaseAuth1 = FirebaseAuth.instance;

  Future<void> signwithauth({
    required String email,
    required password,
  }) async {
    try {
      await firebaseAuth1.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.off(
        indexof(),
      );
      Get.snackbar(
        "Registed",
        "Sucessfully loged in",
      );
    } catch (e) {
      Get.snackbar(
        "Failed",
        e.toString(),
      );
    }
  }
}
