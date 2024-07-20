// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:async';

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/addbutton.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scroll extends StatefulWidget {
  const scroll({super.key});

  @override
  State<scroll> createState() => _scrollState();
}

class _scrollState extends State<scroll> {
  int o = 0;

  List<IconData> icons = [
    CupertinoIcons.bolt_fill,
    CupertinoIcons.airplane,
    CupertinoIcons.cloud_bolt_fill,
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        if (o < 2) {
          o++;
        } else {
          o = 0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    // var W = MediaQuery.of(context).size.width;
    // vertical wid = 384
    //horzontal wid = 782
    return SizedBox(
      height: 58,
      width: 58,
      child: FloatingActionButton(
        backgroundColor: Colors.black,
        elevation: 6,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Container(
              margin: EdgeInsets.only(top: H / 5, bottom: H / 8),
              width: double.infinity,
              height: 300,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Newly ",
                            style: txt.labelRed(),
                          ),
                          Text(
                            "Launched Categories",
                            style: txt.label(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 160,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black.withOpacity(0.03),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Headsets",
                                          style: txt.label(),
                                        )),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      child: Image.asset(
                                        "Assets/snacks/air1.jpeg",
                                        scale: 4,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 160,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black.withOpacity(0.03),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Luggage",
                                          style: txt.label(),
                                        )),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      child: Image.asset(
                                        "Assets/snacks/lugag.png",
                                        scale: 13,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black.withOpacity(0.03),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Eyewear",
                                          style: txt.label(),
                                        )),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      child: Image.asset(
                                        "Assets/snacks/sunglass.png",
                                        scale: 8,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black.withOpacity(0.03),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child:
                                            Text("Watch", style: txt.label())),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      child: Image.asset(
                                        "Assets/snacks/watch.png",
                                        scale: 17,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black.withOpacity(0.03),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Kitchen Items",
                                          style: txt.label(),
                                        )),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      child: Image.asset(
                                        "Assets/snacks/mixi.png",
                                        scale: 19,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "In Spotlight",
                          style: txt.label(),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Material(
                                color: Colors.white,
                                elevation: 6,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                child: Container(
                                  margin: EdgeInsets.all(2),
                                  height: 185,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "T-shirt",
                                          style: txt.username(),
                                        ),
                                      ),
                                      Image.asset(
                                        "Assets/snacks/shi.jpeg",
                                        scale: 4,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "₹999",
                                              style: txt.dc(),
                                            ),
                                            Mainadd(count: 0)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Material(
                                color: Colors.white,
                                elevation: 6,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                child: Container(
                                  margin: EdgeInsets.all(2),
                                  height: 185,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Watch",
                                          style: txt.username(),
                                        ),
                                      ),
                                      Image.asset(
                                        "Assets/snacks/wat.jpeg",
                                        scale: 4.3,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "₹999",
                                              style: txt.dc(),
                                            ),
                                            Mainadd(count: 0)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Material(
                                color: Colors.white,
                                elevation: 6,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                child: Container(
                                  margin: EdgeInsets.all(2),
                                  height: 185,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Cricket Bat",
                                          style: txt.username(),
                                        ),
                                      ),
                                      Image.asset(
                                        "Assets/snacks/R.png",
                                        scale: 36,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "₹999",
                                              style: txt.dc(),
                                            ),
                                            Mainadd(count: 0)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              color: Colors.white,
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icons[o],
              color: Colors.white,
              size: 28,
            ),
            Text(
              "NEW",
              style: txt.nwe(),
            ),
          ],
        ),
      ),
    );
  }
}
