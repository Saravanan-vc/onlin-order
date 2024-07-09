// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/itemcard.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Seconscreen extends StatelessWidget {
  Seconscreen({
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
                      "Assets/seconchocolate/mainchocolate.webp",
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
                      "Chocolate",
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
                  Name: "5 Star value pack",
                  gram: "18 Piece",
                  count: 0,
                  oldprice: 450,
                  price: 299,
                  image: "Assets/seconchocolate/5star.jpg",
                ),
                Itemcard(
                  Name: "Dairy Milk collection of love", // finished to add
                  gram: "5 Piece",
                  count: 0,
                  oldprice: 300,
                  price: 240,
                  image: "Assets/seconchocolate/dairymilkcollection.png",
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
                  Name: "Kitkat the 4-Finger",
                  gram: "24 Piece",
                  count: 0,
                  oldprice: 350,
                  price: 249,
                  image: "Assets/seconchocolate/kitkat.png", // finished to add
                ),
                Itemcard(
                  Name: "Dairy Milk BUBBLY", // finished to add
                  gram: "99g",
                  count: 0,
                  oldprice: 100,
                  price: 80,
                  image: "Assets/seconchocolate/dairymilk.png",
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
