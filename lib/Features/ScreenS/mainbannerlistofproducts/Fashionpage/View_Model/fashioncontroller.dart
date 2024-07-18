import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Electricalpage/View_Model/electricalcontroller.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Fashionpage/Model/Fashionmodel.dart';
import 'package:get/get.dart';

class Fashioncontroller extends mainecontroller {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  List<Fashionproduct> products = [];

  @override
  void onInit() async {
    collectionReference = firebaseFirestore.collection("Fashionproducts");
    await ferchfashiondata();
    super.onInit();
  }

  ferchfashiondata() async {
    QuerySnapshot querySnapshot = await collectionReference.get();
    List<Fashionproduct> fetchingpro = querySnapshot.docs
        .map((doc) =>
            Fashionproduct.formjson(doc.data() as Map<String, dynamic>))
        .toList();

    products.clear();
    products.assignAll(fetchingpro);
  }
}
