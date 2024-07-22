// ignore_for_file: prefer_const_constructors

import 'package:cookeme/Features/Authentication/Login_Screen/View_Model/controller.dart';
import 'package:cookeme/Features/Authentication/Splash_Screen/Views/Pages/Splash_Screen.dart';
import 'package:cookeme/Features/Authentication/Sign_up/View_Models/controller.dart';
import 'package:cookeme/Features/Authentication/forgot/ViewModel/controller.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/watchScree.dart/controller/wcontroller.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Electricalpage/View_Model/electricalcontroller.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/Viw_model/carsoulimage.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/Viw_model/productcount.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/Viw_model/productscontroller.dart';
import 'package:cookeme/Features/ScreenS/cart/View_Model/logic.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Fashionpage/View_Model/fashioncontroller.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Wathcpage/View_model/watchcontroller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(controller());
  Get.put(fogcontroller());
  Get.put(fetchproduct());
  Get.put(countforproduct());
  Get.put(Watchcontroller());
  Get.put(signcontroller());
  Get.put(cartController());
  Get.put(Wcontroller());
  Get.put(Carsoulimage());
  Get.put(Fashioncontroller());
  Get.put(mainecontroller());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        home: splashScreen(),
      ),
    );
  }
}
