// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/Carsoul_Screen/widgets/button_for.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/widgets/offerpage.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/addbutton.dart';
import 'package:cookeme/Features/ScreenS/KitchenScreen/View/Widgets/bottowSheet.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Meatscreen extends StatelessWidget {
  const Meatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            CupertinoIcons.back,
            size: 24,
          ),
        ),
        title: Text("MeatScreen"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search,
              size: 24,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 2,
              mainAxisExtent: 40.h),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 20.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      textAlign: TextAlign.left,
                      textScaler: TextScaler.noScaling,
                      "Relish motton liver gram witho",
                      style: TextStyle(
                        height: 1,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "1 | piece",
                        style: TextStyle(
                          height: 1,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: offerP(
                      height: 250,
                      width: 46.w,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        textScaler: TextScaler.noScaling,
                        "₹250",
                        style: txt.price(),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Text(
                        "₹270",
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  Spacer(),
                  buttonfor_add(
                    hig: 5.h,
                    w: 45.w,
                    count: 0,
                  ),
                  Spacer(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
