import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/controller/blue_print.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/model/mansoon_model/mansonmodel.dart';
import 'package:get/get.dart';

class MansonController extends GetxController implements carsoulBlueprint {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;

  @override
  var products = <Mansonmodel>[];

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    collectionReference = firebaseFirestore.collection('mansonproducts');
    await fetchproduct();
  }

  @override
  fetchproduct() async {
    QuerySnapshot querySnapshot = await collectionReference.get();
    List<Mansonmodel> data = querySnapshot.docs
        .map((doc) => Mansonmodel.fromjson(doc.data() as Map<String, dynamic>))
        .toList();
    products.clear();
    products.assignAll(data);
  }
}
