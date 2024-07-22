// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/Fashion.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/watchScree.dart/screenforwatch.dart';
import 'package:cookeme/Features/ScreenS/toysScreen/View/pages/toyScreen.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Newtostor extends StatelessWidget {
  const Newtostor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Get.off(Toyscreen());
                },
                child: Container(
                  height: 140,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.black.withOpacity(0.09),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "New Toys",
                          style: txt.offer(),
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          "Assets/snacks/gun.png",
                          scale: 8,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.off(
                    Fashionpage(),
                    transition: Transition.cupertino,
                    duration: Duration(milliseconds: 950),
                  );
                },
                child: Container(
                  height: 140,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.black.withOpacity(0.09),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Fashion",
                          style: txt.offer(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          "Assets/snacks/shi.jpeg",
                          scale: 4.5,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.black.withOpacity(0.09),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Kitchen Items",
                        style: txt.offer(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        "Assets/snacks/mixi.png",
                        scale: 13,
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.off(Screenforwatch(),
                      transition: Transition.cupertino,
                      duration: Duration(milliseconds: 855));
                },
                child: Container(
                  height: 140,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.black.withOpacity(0.09),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Watches",
                          style: txt.offer(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          "Assets/snacks/watch.png",
                          scale: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
