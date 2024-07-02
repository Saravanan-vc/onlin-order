// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/Authentication/Login_Screen/View/Pages/Login_Screen.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/Card.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/MainBanner.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/floating.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.4),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "User name",
                      style: txt.username(),
                    ),
                    SizedBox(
                      width: w / 2,
                    ),
                    InkWell(
                      onTap: () async {
                        SharedPreferences preferences =
                            await SharedPreferences.getInstance();

                        preferences.clear();
                        Get.off(loginScreen());
                      },
                      child: Icon(
                        Icons.logout_rounded,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Main_Banner(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Buy",
                      style: txt.offer(),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Snacks',
                      style: txt.secof(),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              cardBanner(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: scroll(),
    );
  }
}
