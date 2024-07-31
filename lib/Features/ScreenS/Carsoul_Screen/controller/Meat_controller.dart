import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/controller/blue_print.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/model/meat_model/meatmodel.dart';
import 'package:get/get.dart';

class MeatController extends GetxController implements carsoulBlueprint {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  @override
  List products = <meatmodel>[];

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    collectionReference = _firebaseFirestore.collection('meatproducts');
    await fetchproduct();
  }

  @override
  fetchproduct() async {
    try {
      QuerySnapshot querySnapshot = await collectionReference.get();
      List<meatmodel> data = querySnapshot.docs
          .map((doc) => meatmodel.fromjson(doc.data() as Map<String, dynamic>))
          .toList();
      products.clear();
      products.assignAll(data);
    } catch (a) {
      stderr.write(a.toString());
    }
  }
}
