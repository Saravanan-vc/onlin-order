// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/itemcard.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Groceries extends StatelessWidget {
  Groceries({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 320,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(80, 60),
                        bottomRight: Radius.elliptical(30, 10)),
                    child: Image.asset(
                      //Banner image is here
                      "Assets/secongrocery/R.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.off(indexof());
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white.withOpacity(
                                0.8,
                              ),
                            ),
                            child: Icon(
                              CupertinoIcons.back,
                              color: Colors.black,
                              size: 50,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Center(
                    child: Text(
                      //Banner name is here
                      "",
                      style: txt.Heading(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Top Deal 50% offer",
                  style: txt.offer(),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Itemcard(
                  Name: "Gold winner",
                  gram: "1 L",
                  count: 0,
                  oldprice: 100,
                  price: 90,
                  image: "Assets/secongrocery/gold.png", //add sucess
                ),
                Itemcard(
                  Name: "Asshirvaad 10kg", // finished to add
                  gram: "10 kg",
                  count: 0,
                  oldprice: 450,
                  price: 400,
                  image: "Assets/secongrocery/Atta.webp",
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Itemcard(
                  Name: "Amul Pasteurised",
                  gram: "500g",
                  count: 0,
                  oldprice: 260,
                  price: 249,
                  image: "Assets/secongrocery/amul.png", // finished to add
                ),
                Itemcard(
                  Name: "Smuckers Black Raspberry", // finished to add
                  gram: "750 g",
                  count: 0,
                  oldprice: 250,
                  price: 220,
                  image: "Assets/secongrocery/jam.png",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
