import 'dart:convert';

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/Authentication/Sign_up/View_Models/controller.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/Viw_model/modelp.dart';
// import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class fetchproduct extends signcontroller {
  // FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  // late CollectionReference collectionReference;
  
  List<products> product = [];

  @override
  void onInit() async {
    // collectionReference = firebaseFirestore.collection("product");
    await fetchdata();
    super.onInit();
  }

  // fetchdatap() async {
  //   QuerySnapshot querySnapshot = await collectionReference.get();
  //   List<products> fetching = querySnapshot.docs
  //       .map((doc) => products.fromjson(doc.data() as Map<String, dynamic>))
  //       .toList();
  //   product.clear();
  //   product.assignAll(fetching);
  // }
  Future fetchdata() async {
    var response = await http.get(Uri.parse(
        'https://saravanan-vc.github.io/jsonfileproducts/Productsforenterlevel'));
    var convertingjson = json.decode(response.body) as List;
    if (response.statusCode == 200) {
      product = convertingjson.map((data) => products.fromjson(data)).toList();
    }
  }
}
