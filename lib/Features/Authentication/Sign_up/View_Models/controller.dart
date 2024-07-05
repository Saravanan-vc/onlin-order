import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class signcontroller extends GetxController {
  bool male = false;
  bool female = false;
  TextEditingController name = TextEditingController();
  TextEditingController emc = TextEditingController();
  TextEditingController pac = TextEditingController();

  FirebaseAuth firebaseAuth1 = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference pereference;
  @override
  void onInit() {
    pereference = firebaseFirestore.collection("user");
    super.onInit();
  }

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
      emc.clear();
      pac.clear();
    } catch (e) {
      Get.snackbar(
        "Failed",
        e.toString(),
      );
    }
  }
}
