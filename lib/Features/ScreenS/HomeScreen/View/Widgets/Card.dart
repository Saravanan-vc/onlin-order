// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/addbutton.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/product.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/Viw_model/productscontroller.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class cardBanner extends StatelessWidget {
  const cardBanner({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return GetBuilder<fetchproduct>(builder: (logic) {
      print(logic.product.length);
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(
                        Productscreen(
                          Pname: "${logic.product[0].name}",
                          Pimage: "Assets/snacks/coca.jpg",
                          Pgram: '${logic.product[0].gram}',
                          Pprice: '₹${logic.product[0].price}',
                        ),
                        transition: Transition.cupertino,
                        duration: Duration(milliseconds: 950),
                      );
                    },
                    child: Container(
                      height: 220,
                      width: w / 3.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                              height: 110,
                              width: double.infinity,
                              color: Colors.white,
                              child:
                                  Image.network("${logic.product[0].image}")),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "${logic.product[0].name}",
                              style: txt.snacks(),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${logic.product[0].gram}',
                                style: txt.gram(),
                              ),
                            ),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '₹${logic.product[0].price}',
                                    style: txt.price(),
                                  ),
                                ),
                              ),
                              Mainadd(count: 0)
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(
                        Productscreen(
                          Pname: "${logic.product[1].name}",
                          Pimage: "Assets/snacks/coca.jpg",
                          Pgram: '${logic.product[1].gram}',
                          Pprice: '₹${logic.product[1].price}',
                        ),
                        transition: Transition.cupertino,
                        duration: Duration(milliseconds: 950),
                      );
                    },
                    child: Container(
                      height: 220,
                      width: w / 3.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                              height: 110,
                              width: double.infinity,
                              color: Colors.white,
                              child:
                                  Image.network("${logic.product[1].image}")),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "${logic.product[1].name}",
                              style: txt.snacks(),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${logic.product[1].gram}',
                                style: txt.gram(),
                              ),
                            ),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '₹${logic.product[1].price}',
                                    style: txt.price(),
                                  ),
                                ),
                              ),
                              Mainadd(count: 0)
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(
                        Productscreen(
                          Pname: "${logic.product[2].name}",
                          Pimage: "Assets/snacks/kur.jpg",
                          Pgram: '${logic.product[2].gram}',
                          Pprice: '₹${logic.product[2].price}',
                        ),
                        transition: Transition.cupertino,
                        duration: Duration(milliseconds: 950),
                      );
                    },
                    child: Container(
                      height: 220,
                      width: w / 3.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 110,
                            width: double.infinity,
                            color: Colors.white,
                            child: Image.network('${logic.product[2].image}'),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "${logic.product[2].name}",
                              style: txt.snacks(),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${logic.product[2].gram}',
                                style: txt.gram(),
                              ),
                            ),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '₹${logic.product[2].price}',
                                    style: txt.price(),
                                  ),
                                ),
                              ),
                              Mainadd(count: 0)
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(
                        Productscreen(
                          Pname: " ${logic.product[3].name}",
                          Pimage: "Assets/snacks/dew.jpg",
                          Pgram: '${logic.product[3].gram}',
                          Pprice: '₹${logic.product[3].price}',
                        ),
                        transition: Transition.cupertino,
                        duration: Duration(milliseconds: 950),
                      );
                    },
                    child: Container(
                      height: 220,
                      width: w / 3.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 110,
                            width: double.infinity,
                            color: Colors.white,
                            child: Image.network("${logic.product[3].image}"),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "${logic.product[3].name}",
                              style: txt.snacks(),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${logic.product[3].gram}',
                                style: txt.gram(),
                              ),
                            ),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '₹${logic.product[3].price}',
                                    style: txt.price(),
                                  ),
                                ),
                              ),
                              Mainadd(count: 0)
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(
                        Productscreen(
                          Pname: "P${logic.product[5].name}",
                          Pimage: "Assets/snacks/pepsi.jpg",
                          Pgram: '${logic.product[5].gram}',
                          Pprice: '₹${logic.product[5].price}',
                        ),
                        transition: Transition.cupertino,
                        duration: Duration(milliseconds: 950),
                      );
                    },
                    child: Container(
                      height: 220,
                      width: w / 3.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 110,
                            width: double.infinity,
                            color: Colors.white,
                            child: Image.network("${logic.product[5].image}"),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "${logic.product[5].name}",
                              style: txt.snacks(),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${logic.product[5].gram}',
                                style: txt.gram(),
                              ),
                            ),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '₹${logic.product[5].price}',
                                    style: txt.price(),
                                  ),
                                ),
                              ),
                              Mainadd(count: 0)
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(
                        Productscreen(
                          Pname: "${logic.product[4].name} ",
                          Pimage: "Assets/snacks/fanta.jpg",
                          Pgram: '${logic.product[4].gram} ',
                          Pprice: '₹${logic.product[4].price} ',
                        ),
                        transition: Transition.cupertino,
                        duration: Duration(milliseconds: 950),
                      );
                    },
                    child: Container(
                      height: 220,
                      width: w / 3.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 110,
                            width: double.infinity,
                            color: Colors.white,
                            child: Image.network("${logic.product[4].image}"),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "${logic.product[4].name} ",
                              style: txt.snacks(),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${logic.product[4].gram} ',
                                style: txt.gram(),
                              ),
                            ),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '₹${logic.product[4].price} ',
                                    style: txt.price(),
                                  ),
                                ),
                              ),
                              Mainadd(count: 0)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      );
    });
  }
}
