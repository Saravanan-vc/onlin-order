import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart';

class countforproduct extends GetxController {
  FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  late String kurkure;
  late String coca;
  late String lays;
  late String mountain;
  late String pepsi;
  late String fanta;

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    await fetchdata();
    super.onInit();
  }

  Future<void> fetchdata() async {
    var fromdata =
        firebaseStorage.ref().child("Kurkure_Green_Chutney_1200x1200.webp");
    var convert = await fromdata.getDownloadURL();

    kurkure = convert;
    //kurkure
    var fd =
        firebaseStorage.ref().child("bottle-coca-cola-png-transparent-2.png");
    var cd = await fd.getDownloadURL();
    coca = cd;
    //coacola
    var fd1 = firebaseStorage.ref().child("Lays-Cheddar-Sour-Cream.png");
    var cd1 = await fd1.getDownloadURL();
    lays = cd1;
    //lays
    var fd2 = firebaseStorage.ref().child("30565-5-mountain-dew-photos.png");
    var cd2 = await fd2.getDownloadURL();
    mountain = cd2;
    //mountain dew
    var fd3 = firebaseStorage.ref().child("R.png");
    var cd3 = await fd3.getDownloadURL();
    pepsi = cd3;
    //pepsi can
    var fd4 = firebaseStorage.ref().child("fanta.png");
    var cd4 = await fd4.getDownloadURL();
    fanta = cd4;
    //fanta
  }

  int layss = 0;
}
