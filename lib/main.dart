// ignore_for_file: prefer_const_constructors

import 'package:cookeme/Features/Authentication/Login_Screen/View_Model/controller.dart';
import 'package:cookeme/Features/Authentication/Splash_Screen/Views/Pages/Splash_Screen.dart';
import 'package:cookeme/Features/Authentication/Sign_up/View_Models/controller.dart';
import 'package:cookeme/Features/Authentication/forgot/ViewModel/controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(controller());
  Get.put(fogcontroller());
  Get.put(signcontroller());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: splashScreen(),
    );
  }
}
