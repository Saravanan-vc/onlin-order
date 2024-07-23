import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/watchScree.dart/model/carsoulmodel.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Wathcpage/View_model/watchcontroller.dart';
import 'package:get/get.dart';

class Wcontroller extends Watchcontroller {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  List<carsoulimage> carsoul = [];

  @override
  void onInit()async {
    // TODO: implement onInit
    super.onInit();
    collectionReference = firebaseFirestore.collection('WatchCarsoul');
   await _fetchindCarsoul();
  }

  _fetchindCarsoul() async {
    QuerySnapshot querySnapshot = await collectionReference.get();
    List<carsoulimage> cc = querySnapshot.docs
        .map((doc) => carsoulimage.fromjson(doc.data() as Map<String, dynamic>))
        .toList();
    carsoul.clear();
    carsoul.assignAll(cc);
  }
}
