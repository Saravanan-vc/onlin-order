import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/Viw_model/modelp.dart';
import 'package:get/get.dart';

class fetchproduct extends GetxController {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  List<products> product = [];

  @override
  void onInit() async {
    collectionReference = firebaseFirestore.collection("product");
    await fetchdata();
    super.onInit();
  }

  fetchdata() async {
    QuerySnapshot querySnapshot = await collectionReference.get();
    List<products> fetching = querySnapshot.docs
        .map((doc) => products.fromjson(doc.data() as Map<String, dynamic>))
        .toList();
    product.clear();
    product.assignAll(fetching);
  }
}
