// ignore_for_file: prefer_const_constructors
import 'package:cookeme/Features/Authentication/Splash_Screen/Views/Pages/Splash_Screen.dart';
import 'package:cookeme/core/internetchecker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  depencinjection.init();

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



// flutter pub run build_runner build --delete-conflicting-outputs