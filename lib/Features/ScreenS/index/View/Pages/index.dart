// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Pages/Home_Screen.dart';
import 'package:cookeme/Features/ScreenS/cart/View/Pages/Cart.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class indexof extends StatefulWidget {
  const indexof({super.key});

  @override
  State<indexof> createState() => _indexofState();
}

class _indexofState extends State<indexof> {
  List<Widget> screen = [
    homeScreen(),
  ];
  int ScreenPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screen[ScreenPage],
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 106,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.lock_open,
                        size: 16,
                      ),
                      Text(
                        "  Get ",
                        style: txt.botto(),
                      ),
                      Text(
                        "Discount ",
                        style: txt.bottoc(),
                      ),
                      Text(
                        "on your first order upto ",
                        style: txt.botto(),
                      ),
                      Text(
                        "₹80",
                        style: txt.bottoc(),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Colors.black.withOpacity(0.05)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              ScreenPage = 0;
                            });
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: 45,
                                width: 45,
                                child: Image.asset("Assets/snacks/home.gif"),
                              ),
                            ],
                          )),
                      GestureDetector(
                        onTap: () {
                          Get.to(cartpage());
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 45,
                              width: 45,
                              child: Image.asset(
                                  "Assets/snacks/shopping-cart.gif"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
