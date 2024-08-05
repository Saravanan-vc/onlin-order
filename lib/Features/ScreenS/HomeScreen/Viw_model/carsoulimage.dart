// import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

import 'package:cookeme/Features/ScreenS/HomeScreen/Viw_model/casoulmodel/modelc.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Carsoulimage extends GetxController {
  // FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  // late CollectionReference collectionReference;
  List<banner> bannerc = [];

  @override
  void onInit() async {
    // collectionReference = firebaseFirestore.collection("banner");
    await fetchdata();
    super.onInit();
  }

  // not working this is firbase code
  //  fetchdata() async {
  //   try {
  //     QuerySnapshot querySnapshot = await collectionReference.get();
  //     List<banner> fetchingbanner = querySnapshot.docs
  //         .map((doc) => banner.fromjson(doc.data() as Map<String, dynamic>))
  //         .toList();
  //     print(fetchingbanner);
  //     bannerc.clear();
  //     bannerc.assignAll(fetchingbanner);
  //   } catch (e) {
  //     print('error');
  //     print(e.toString());
  //   } finally {
  //     print('');
  //   }
  // }

  /* now we are going to use api */

  Future fetchdata() async {
    var response = await http.get(Uri.parse(
        'https://saravanan-vc.github.io/jsonfileproducts/Carosulimage'));
    var convertingjson = json.decode(response.body) as List;
    if (response.statusCode == 200) {
      bannerc = convertingjson.map((data) => banner.fromjson(data)).toList();
    }
  }
}
