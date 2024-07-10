// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/addbutton.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/itemcard.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:cookeme/core/paddingH.dart';
import 'package:cookeme/core/sizedbox.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';

class Productscreen extends StatelessWidget {
  final String Pname;
  final dynamic Pimage;
  final String Pgram;
  final String Pprice;
  const Productscreen({
    super.key,
    required this.Pname,
    required this.Pimage,
    required this.Pgram,
    required this.Pprice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        leading: IconButton(
          onPressed: () => Get.off(
            indexof(),
          ),
          icon: Icon(
            CupertinoIcons.back,
            size: 24,
          ),
        ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.3,
              color: Colors.grey.shade300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(Pimage),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padd.horizontal(
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  Pname,
                  style: txt.label(),
                ),
              ),
            ),
            siz.ten(),
            siz.ten(),
            Padd.horizontal(
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  Pgram,
                  style: txt.pgram(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padd.horizontal(
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              Pprice,
                              style: txt.cartempty(),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padd.horizontal(
                            Text(
                              "15%OFF",
                              style: txt.mini(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padd.horizontal(
                      Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: GestureDetector(
                                  onTap: () {
                                    print("object");

                                    showBottomSheet(
                                      showDragHandle: F,
                                      context: context,
                                      builder: (g) => Container(
                                        height: 250,
                                        color: Colors.amber,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2.8,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.amber,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Get for 20% discount",
                                            style: txt.snacks(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ) // padding
                  ],
                ),
                Padd.horizontal(
                  Mainadd(count: 0),
                ),
              ],
            ),
            siz.ten(),
            siz.ten(),
            Container(
              child: Padd.horizontal(
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product information",
                      style: txt.label(),
                    ),
                    Icon(
                      CupertinoIcons.chevron_down,
                    ),
                  ],
                ),
              ),
            ),
            Padd.horizontal(
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Itemcard(
                    image: Pimage,
                    Name: "dd",
                    price: 33,
                    gram: "dd",
                    oldprice: 22,
                    count: 0,
                  ),
                  Itemcard(
                    image: Pimage,
                    Name: "dd",
                    price: 33,
                    gram: "dd",
                    oldprice: 22,
                    count: 0,
                  ),
                ],
              ),
            ),
            siz.ten(),
            Padd.horizontal(
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Itemcard(
                    image: Pimage,
                    Name: "dd",
                    price: 33,
                    gram: "dd",
                    oldprice: 22,
                    count: 0,
                  ),
                  Itemcard(
                    image: Pimage,
                    Name: "dd",
                    price: 33,
                    gram: "dd",
                    oldprice: 22,
                    count: 0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
