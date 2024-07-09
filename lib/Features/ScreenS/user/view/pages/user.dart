// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/Authentication/Login_Screen/View/Pages/Login_Screen.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:cookeme/Features/ScreenS/user/view/widgets/container.dart';
import 'package:cookeme/Features/ScreenS/user/view/widgets/settings.dart';
import 'package:cookeme/Features/ScreenS/user/view/widgets/yourwalt.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Userprofiel extends StatelessWidget {
  const Userprofiel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.off(
            indexof(),
          ),
          icon: Icon(
            CupertinoIcons.back,
            size: 24,
          ),
        ),
        centerTitle: T,
        title: Text(
          "Settings",
          style: txt.label(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Image.asset(
                    "Assets/listoforders/4.png",
                    scale: 9,
                  ),
                  Column(
                    // want to fetch user name from database
                    children: [
                      // and also user mobile number
                      Text(
                        "User_name",
                        style: txt.label(),
                      ),
                      Text(
                        "User_phone",
                        style: txt.label(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Upgradepass(),
            SizedBox(
              height: 20,
            ),
            Yourwalt(),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 680,
              child: Listsettings(),
            ),
            SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: () async {
                SharedPreferences preferences =
                    await SharedPreferences.getInstance();

                preferences.clear();
                Get.off(loginScreen());
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 2),
                    child: Text(
                      "Logout",
                      style: txt.offer(),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Text("App Version Vanila-V0.01"),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
