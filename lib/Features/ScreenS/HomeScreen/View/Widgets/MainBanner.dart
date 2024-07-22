// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/Authentication/Login_Screen/View_Model/controller.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/searchbutton.dart/searchbutton.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Electricalpage/view/electronicpage.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/everydayofferscreen.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/groceries.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/homeclean.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Fashionpage/View/fashion.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Wathcpage/view/watch.dart';
import 'package:cookeme/Features/ScreenS/user/view/pages/user.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
// import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class Main_Banner extends StatefulWidget {
  const Main_Banner({super.key});

  @override
  State<Main_Banner> createState() => _Main_BannerState();
}

class _Main_BannerState extends State<Main_Banner> {
  @override
  Widget build(BuildContext context) {
    // print(DateFormat("EEEE").format(DateTime.now()));

    var w = MediaQuery.of(context).size.width;
    return GetBuilder<controller>(builder: (logic) {
      return Stack(children: [
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.purple[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(40.0, 40.0),
                  bottomRight: Radius.elliptical(40.0, 40.0),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 490),
        ),
        Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 8,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(
                        Userprofiel(),
                        transition: Transition.cupertino,
                        duration: Duration(milliseconds: 950),
                      );
                    },
                    child: Image.asset(
                      "Assets/listoforders/4.png",
                      scale: 12,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    logic.Name(),
                    style: txt.username(),
                  ),
                  SizedBox(
                    width: w / 2,
                  ),
                ],
              ),
            ),
            Container(
              child: Lottie.asset("Assets/rive/sale.json"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.off(
                              Seconscreen(),
                              transition: Transition.cupertino,
                              duration: Duration(milliseconds: 950),
                            );
                          },
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 2.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Every Day",
                                            style: txt.snacks(),
                                          ),
                                          Text(
                                            " Snacks",
                                            style: txt.snacks(),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                        child: Image.asset(
                                          "Assets/snacks/chco.jpeg",
                                          scale: 11,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Up t0",
                                            style: txt.snackss(Colors.blue),
                                          ),
                                          Text(
                                            " 50%",
                                            style: txt.snackss1(Colors.blue),
                                          ),
                                          Text(
                                            " OFF",
                                            style: txt.snackss(Colors.blue),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                        child: Image.asset(
                                          "Assets/snacks/coca.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //1st
                        GestureDetector(
                          onTap: () {
                            Get.off(
                              Groceries(),
                              transition: Transition.cupertino,
                              duration: Duration(milliseconds: 950),
                            );
                          },
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Every Day",
                                            style: txt.snacks(),
                                          ),
                                          Text(
                                            " Groceries",
                                            style: txt.snacks(),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                        child: Image.asset(
                                          "Assets/snacks/as.png",
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Up t0",
                                            style: txt.snackss(Colors.red),
                                          ),
                                          Text(
                                            " 30%",
                                            style: txt.snackss1(Colors.red),
                                          ),
                                          Text(
                                            " OFF",
                                            style: txt.snackss(Colors.red),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                        child: Image.asset(
                                          "Assets/snacks/gw.png",
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //2nd
                        GestureDetector(
                          onTap: () {
                            Get.off(
                              Homeclean(),
                              transition: Transition.cupertino,
                              duration: Duration(milliseconds: 950),
                            );
                          },
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Every Day",
                                            style: txt.snacks(),
                                          ),
                                          Text(
                                            " Home Clean",
                                            style: txt.snacks(),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                        child: Image.asset(
                                          "Assets/snacks/158.png",
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: .0, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Up t0",
                                            style: txt.snackss(Colors.green),
                                          ),
                                          Text(
                                            " 40%",
                                            style: txt.snackss1(Colors.green),
                                          ),
                                          Text(
                                            " OFF",
                                            style: txt.snackss(Colors.green),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                        child: Image.asset(
                                          "Assets/snacks/hp.png",
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(
                              Electronicpage(),
                              transition: Transition.cupertino,
                              duration: Duration(milliseconds: 950),
                            );
                          },
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Every Day",
                                            style: txt.snacks(),
                                          ),
                                          Text(
                                            "Eltronic",
                                            style: txt.snacks(),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                        child: Image.asset(
                                          "Assets/snacks/jbl.jpeg",
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Up t0",
                                            style: txt.snackss(Colors.pink),
                                          ),
                                          Text(
                                            " 60%",
                                            style: txt.snackss1(Colors.pink),
                                          ),
                                          Text(
                                            " OFF",
                                            style: txt.snackss(Colors.pink),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                        child: Image.asset(
                                          "Assets/snacks/air.png",
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(
                              Fashionpagebanner(),
                              transition: Transition.cupertino,
                              duration: Duration(milliseconds: 950),
                            );
                          },
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Every Day",
                                            style: txt.snacks(),
                                          ),
                                          Text(
                                            " T-shirt",
                                            style: txt.snacks(),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                        child: Image.asset(
                                          "Assets/snacks/shi.jpeg",
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Up t0",
                                            style: txt.snackss(Colors.blue),
                                          ),
                                          Text(
                                            " 54%",
                                            style: txt.snackss1(Colors.blue),
                                          ),
                                          Text(
                                            " OFF",
                                            style: txt.snackss(Colors.blue),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                        child: Image.asset(
                                          "Assets/snacks/track.jpeg",
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.off(
                              watchpagebanner(),
                              transition: Transition.cupertino,
                              duration: Duration(milliseconds: 950),
                            );
                          },
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Every Day",
                                            textScaler: TextScaler.noScaling,
                                            style: txt.snacks(),
                                          ),
                                          Text(
                                            " Watch",
                                            style: txt.snacks(),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                        child: Image.asset(
                                          "Assets/snacks/wat.jpeg",
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Up t0",
                                            style:
                                                txt.snackss(Colors.cyanAccent),
                                          ),
                                          Text(
                                            " 84%",
                                            style:
                                                txt.snackss1(Colors.cyanAccent),
                                          ),
                                          Text(
                                            " OFF",
                                            style:
                                                txt.snackss(Colors.cyanAccent),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 35,
                                        child: Image.asset(
                                          "Assets/snacks/spek.png",
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Positioned(top: 35, right: 10, child: seachbuttonw())
      ]);
    });
  }
}
