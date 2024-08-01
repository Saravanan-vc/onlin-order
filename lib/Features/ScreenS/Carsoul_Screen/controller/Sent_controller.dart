import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/controller/blue_print.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/model/sent_model/sentmodel.dart';
import 'package:get/get.dart';

class SentController extends GetxController implements carsoulBlueprint {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  @override
  var products = <Sentmodel>[];

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    collectionReference = firebaseFirestore.collection('sentproducts');
    await fetchproduct();
  }

  @override
  fetchproduct() async {
    QuerySnapshot querySnapshot = await collectionReference.get();
    List<Sentmodel> data = querySnapshot.docs
        .map((doc) => Sentmodel.fromjson(doc.data() as Map<String, dynamic>))
        .toList();
    products.clear();
    products.assignAll(data);
  }
}
