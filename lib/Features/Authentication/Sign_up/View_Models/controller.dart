import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/Authentication/Login_Screen/View/Pages/Login_Screen.dart';
import 'package:cookeme/Features/Authentication/Sign_up/View_Models/model.dart';
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
  List<userdoc> users = [];
  @override
  void onInit() async {
    pereference = firebaseFirestore.collection("user");
    await fetchdata();
    super.onInit();
  }

  fetchdata() async {
    QuerySnapshot querySnapshot = await pereference.get();
    List<userdoc> colle = querySnapshot.docs
        .map((doc) => userdoc.fromjson(doc.data() as Map<String, dynamic>))
        .toList();
    users.clear();
    users.assignAll(colle);
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
