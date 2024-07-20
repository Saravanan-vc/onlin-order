// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/addbutton.dart';
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
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          onPressed: () => Get.off(
            indexof(),
          ),
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
      body: GridView.count(
        crossAxisCount: w < 500 ? 3 : 6,
        childAspectRatio: 35.w / 32.h,
        children: List.generate(
          w < 500 ? 3 : 6,
          (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 32.h, //32
                width: 35.w, //35
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        "Assets/Fashion/Short/blackS.jpeg",
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 3,
                            ),
                            Wrap(
                              children: [
                                Text(
                                  "Lay's fvalour chedar sorce and cream",
                                  textAlign: TextAlign.center,
                                  style: txt.snacks(),
                                )
                              ],
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text(
                                  "54g",
                                  style: txt.snacks(),
                                ),
                              )),
                            ),
                            Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "₹90",
                                    style: TextStyle(decoration: TextDecoration.lineThrough),
                                  ),
                                  Mainadd(count: 0)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
