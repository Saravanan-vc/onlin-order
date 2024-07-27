import 'dart:async';
import 'package:cookeme/Features/Authentication/Sign_up/View_Models/controller.dart';
import 'package:cookeme/Features/Authentication/forgot/ViewModel/controller.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/watchScree.dart/controller/wcontroller.dart';
import 'package:cookeme/Features/ScreenS/KitchenScreen/View_Model/kitchen.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Electricalpage/View_Model/electricalcontroller.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/Viw_model/carsoulimage.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/Viw_model/productcount.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/Viw_model/productscontroller.dart';
import 'package:cookeme/Features/ScreenS/cart/View_Model/logic.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Fashionpage/View_Model/fashioncontroller.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Wathcpage/View_model/watchcontroller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cookeme/Features/Authentication/Login_Screen/View_Model/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class Internetchecker extends GetxController {
  late StreamSubscription streamSubscription;
  bool initstate = false;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    streamSubscription = Connectivity().onConnectivityChanged.listen(
      (result) async {
        initstate = await InternetConnectionChecker().hasConnection;
        if (initstate == false) {
          Get.snackbar("NO INTERNET", "CHECK INTERNET CONNECTION",
              icon: const Icon(CupertinoIcons.wifi_slash),
              duration: const Duration(days: 1));
        } else {
          if (Get.isSnackbarOpen) {
            Get.closeCurrentSnackbar();
          }
        }
      },
    );
  }
}

class depencinjection {
  static void init() {
    Get.put(controller());
    Get.put(Internetchecker(), permanent: true);
    Get.put(fogcontroller());
    Get.put(fetchproduct());
    Get.put(countforproduct());
    Get.put(Watchcontroller());
    Get.put(signcontroller());
    Get.put(cartController());
    Get.put(Wcontroller());
    Get.put(Carsoulimage());
    Get.put(kitchen());
    Get.put(Fashioncontroller());
    Get.put(mainecontroller());
  }
}
