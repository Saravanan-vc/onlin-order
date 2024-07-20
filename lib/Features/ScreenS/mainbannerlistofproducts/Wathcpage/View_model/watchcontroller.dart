import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Electricalpage/View_Model/electricalcontroller.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Wathcpage/model/watchproducts.dart';
import 'package:get/get.dart';

class Watchcontroller extends mainecontroller {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference reference;

  List<Watchproduct> producted = [];

  @override
  void onInit() async {
    reference = firebaseFirestore.collection("Watchproducts");
    await fitchingdata();
    super.onInit();
  }

  fitchingdata() async {
    QuerySnapshot querySnapshot = await reference.get();
    List<Watchproduct> fetchingwatch = querySnapshot.docs
        .map((doc) => Watchproduct.formjson(doc.data() as Map<String, dynamic>))
        .toList();
    producted.clear();
    producted.assignAll(fetchingwatch);
  }
}
