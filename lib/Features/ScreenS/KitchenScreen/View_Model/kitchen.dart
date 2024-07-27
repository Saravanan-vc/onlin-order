import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/ScreenS/KitchenScreen/model/kitchemodel.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Electricalpage/View_Model/electricalcontroller.dart';
import 'package:get/get.dart';

// abstract class print {
//   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//   late CollectionReference collectionReference;
//   List fetcheddata = [];
  
//   fetchingdata();
// }

class kitchen extends mainecontroller {

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  late CollectionReference collectionReference;

  var fetcheddata = <Kitchemodel>[];

  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    collectionReference = firebaseFirestore.collection('kitchenproducts');
    
    await fetchingdata();
  }

  fetchingdata() async {
    QuerySnapshot querySnapshot = await collectionReference.get();
    List<Kitchemodel> data = querySnapshot.docs
        .map((doc) => Kitchemodel.fromjson(doc.data() as Map<String, dynamic>))
        .toList();
    fetcheddata.clear();
    fetcheddata.assignAll(data);
  }
}
