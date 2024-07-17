import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Electricalpage/Model/model.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Electricalpage/Model/modelproducts.dart';
import 'package:get/get.dart';

class mainecontroller extends Electricalproducts {
  //child class
  @override
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  List<electricaldata> elctrical = [];

  @override
  void onInit() async {
    collectionReference = await firebaseFirestore.collection('Mainbanner');
    await fetchdata();
    super.onInit();
  }

  fetchdata() async {
    QuerySnapshot querySnapshot = await collectionReference.get();
    List<electricaldata> fetchingdata = querySnapshot.docs
        .map((doc) =>
            electricaldata.fromjson(doc.data() as Map<String, dynamic>))
        .toList();
    elctrical.clear();
    elctrical.assignAll(fetchingdata);
  }
}

class Electricalproducts extends GetxController {
  // parent class
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  List<electricproducts> elctricalProducts = [];

  @override
  void onInit() async {
    collectionReference =
        await firebaseFirestore.collection('electricalproducts');
    await fetchdataproducts();
    super.onInit();
  }

  fetchdataproducts() async {
    QuerySnapshot querySnapshot1 = await collectionReference.get();
    List<electricproducts> fetchingdatap = querySnapshot1.docs
        .map((doc) =>
            electricproducts.fromjson(doc.data() as Map<String, dynamic>))
        .toList();
    elctricalProducts.clear();
    elctricalProducts.assignAll(fetchingdatap);
  }
}
