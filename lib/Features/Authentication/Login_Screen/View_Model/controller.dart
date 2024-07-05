// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class controller extends GetxController {
  TextEditingController EmailC = TextEditingController();
  TextEditingController PhoneC = TextEditingController();
  late String name;

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;

  @override
  void onInit() {
    collectionReference = firebaseFirestore.collection("user");

    super.onInit();
  }

  Future<void> check() async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: EmailC.text,
        password: PhoneC.text,
      );

      EmailC.dispose();
      PhoneC.dispose();
      Get.off(indexof());
      Get.snackbar("Sucess", "Login is Sucess");
    } catch (e) {
      Get.snackbar("Faild", e.toString());
    }
  }

  fetch() async {}
}
