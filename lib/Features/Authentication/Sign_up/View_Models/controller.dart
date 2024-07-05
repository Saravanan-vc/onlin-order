import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/Authentication/Login_Screen/View/Pages/Login_Screen.dart';
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
      DocumentReference doc = pereference.doc();
      Map<String, dynamic> addthis = {
        'useremail': emc.text,
        'userid': doc.id,
        'username': name.text
      };
      pereference.add(addthis);
      Get.off(
        loginScreen(),
      );
      Get.snackbar(
        "Registed",
        "Sucessfully created please login to get inside",
      );
      emc.clear();
      pac.clear();
      name.clear();
    } catch (e) {
      Get.snackbar(
        "Failed",
        e.toString(),
      );
    }
  }
}
