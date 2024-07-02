// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:cookeme/Features/Authentication/Login_Screen/View/Pages/Login_Screen.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Pages/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    );
  }

  void start() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool? check = await preferences.getBool('login');
    print("heelo$check");
    Timer(Duration(seconds: 2), () {
      if (check == true) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => homeScreen(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => loginScreen(),
          ),
        );
      }
    });
  }
}
