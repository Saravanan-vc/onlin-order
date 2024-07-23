// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/Authentication/Sign_up/View_Models/model.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class controller extends GetxController {
  TextEditingController EmailC = TextEditingController();
  TextEditingController PhoneC = TextEditingController();
  late SharedPreferences preferences;

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  List<userdoc> users = [];
  @override
  void onInit() async {
    collectionReference = firebaseFirestore.collection("user");
    preferences = await SharedPreferences.getInstance();
    await fetching();
    super.onInit();
  }

  fetching() async {
    QuerySnapshot querySnapshot = await collectionReference.get();
    List<userdoc> getinguser = querySnapshot.docs
        .map((doc) => userdoc.fromjson(doc.data() as Map<String, dynamic>))
        .toList();
    users.clear();
    users.assignAll(getinguser);
  }

  Future<void> check() async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: EmailC.text,
        password: PhoneC.text,
      );

      int a = users.length;
      for (int i = 0; i < a; i++) {
        if (EmailC.text == users[i].usermail) {
          preferences.setString('name', "${users[i].username}");
        }
      }

      EmailC.clear();
      PhoneC.clear();
      Get.off(indexof());
      Get.snackbar("Sucess", "Login is Sucess");
    } catch (e) {
      print(e);
      Get.snackbar("Faild", e.toString());
    }
  }

  Name() {
    return preferences.getString('name');
  }

  remove() {
    return preferences.clear();
  }
}
