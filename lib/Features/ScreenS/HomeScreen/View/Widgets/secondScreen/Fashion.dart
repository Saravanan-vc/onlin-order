// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/carsoulScreen/FashionScreenlist/Short.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/carsoulScreen/FashionScreenlist/Track.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/carsoulScreen/FashionScreenlist/Tshirt.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/carsoulScreen/FashionScreenlist/coolinglass.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:cookeme/core/paddingH.dart';
import 'package:cookeme/core/sizedbox.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Fashionpage extends StatefulWidget {
  const Fashionpage({super.key});

  @override
  State<Fashionpage> createState() => _FashionpageState();
}

class _FashionpageState extends State<Fashionpage> {
  bool c1 = T;
  bool c2 = F;
  bool c3 = F;
  bool c4 = F;

  int num = 0;
  List screen = [
    Tshirtpage(),
    ShortPage(),
    Trackpage(),
    Coolinglasspage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 229, 243),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(96, 225, 190, 231),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Apparel & Lifestyle",
              style: txt.label(),
            ),
            Text("200 items"),
          ],
        ),
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Get.off(
              indexof(),
              transition: Transition.cupertino,
              duration: Duration(milliseconds: 950),
            );
          },
        ),
      ),
      body: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 400,
            decoration: BoxDecoration(),
            width: 80,
            child: Column(
              children: [
                siz.ten(),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        num = 0;
                        c1 = T;
                        c2 = c3 = c4 = F;
                      });
                      print("c1 is $c1");
                    },
                    child: Padd.horonlyleft(
                      Container(
                        width: 80,
                        height: 90,
                        decoration: BoxDecoration(
                          color: c1 ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          Icons.local_activity,
                          size: 30,
                        ),
                      ),
                    )),
                siz.ten(),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        // c1 = !c1;
                        num = 1;
                        c2 = T;
                        c1 = c3 = c4 = F;
                      });
                      print("c2 is $c2");
                    },
                    child: Padd.horonlyleft(
                      Container(
                        width: 80,
                        height: 90,
                        decoration: BoxDecoration(
                          color: c2 ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          Icons.local_activity,
                          size: 30,
                        ),
                      ),
                    )),
                siz.ten(),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        // c1 = !c1;
                        num = 2;
                        c3 = T;
                        c1 = c2 = c4 = F;
                      });
                      print("c3 is $c3");
                    },
                    child: Padd.horonlyleft(
                      Container(
                        width: 80,
                        height: 90,
                        decoration: BoxDecoration(
                          color: c3 ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          Icons.local_activity,
                          size: 30,
                        ),
                      ),
                    )),
                siz.ten(),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        // c1 = !c1;
                        num = 3;
                        c4 = T;
                        c1 = c2 = c3 = F;
                      });
                      print("c4 is $c4");
                    },
                    child: Padd.horonlyleft(
                      Container(
                        width: 80,
                        height: 90,
                        decoration: BoxDecoration(
                          color: c4 ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          Icons.local_activity,
                          size: 30,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Expanded(
            child: screen[num],
          ),
        ],
      ),
    );
  }
}
