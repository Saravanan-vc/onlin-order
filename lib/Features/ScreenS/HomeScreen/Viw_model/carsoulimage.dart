import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/Viw_model/casoulmodel/modelc.dart';
import 'package:get/get.dart';

class Carsoulimage extends GetxController {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  List<banner> bannerc = [];

  @override
  void onInit() async {
    collectionReference = firebaseFirestore.collection("banner");
    await fetchdata();
    super.onInit();
  }

  fetchdata() async {
    QuerySnapshot querySnapshot = await collectionReference.get();
    List<banner> fetchingbanner = querySnapshot.docs
        .map((doc) => banner.fromjson(doc.data() as Map<String, dynamic>))
        .toList();

    bannerc.clear();
    bannerc.assignAll(fetchingbanner);
  }
}
