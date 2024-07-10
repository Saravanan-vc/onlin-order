// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/addbutton.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/product.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/Viw_model/productcount.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class cardBanner extends StatelessWidget {
  const cardBanner({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return GetBuilder<countforproduct>(builder: (logic) {
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
                          Pname: "Lay's Cheddar & Sour Cream Potato Chips",
                          Pimage: "Assets/snacks/OIP.jpeg",
                          Pgram: "54g",
                          Pprice: "₹60",
                        ),
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
                            child: Image.asset(
                              "Assets/snacks/OIP.jpeg",
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Lay's Cheddar & Sour Cream Potato Chips",
                              style: txt.snacks(),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '54g',
                                style: txt.gram(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '₹60',
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
                          Pname: "Coca-Cola Soft Drink",
                          Pimage: "Assets/snacks/coca.jpg",
                          Pgram: '750 ml',
                          Pprice: '₹40',
                        ),
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
                            child: Image.asset(
                              "Assets/snacks/coca.jpg",
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Coca-Cola Soft Drink",
                              style: txt.snacks(),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '750 ml',
                                style: txt.gram(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '₹40',
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
                          Pname: "KurKure Green Chutnry with spicy & Hot",
                          Pimage: "Assets/snacks/kur.jpg",
                          Pgram: '84g',
                          Pprice: '₹60',
                        ),
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
                            child: Image.asset(
                              "Assets/snacks/kur.jpg",
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "KurKure Green Chutnry with spicy & Hot",
                              style: txt.snacks(),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '84g',
                                style: txt.gram(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '₹60',
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
                          Pname: "Mountan Dew Soft Drink",
                          Pimage: "Assets/snacks/dew.jpg",
                          Pgram: '750ml',
                          Pprice: '₹40',
                        ),
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
                            child: Image.asset(
                              "Assets/snacks/dew.jpg",
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Mountan Dew Soft Drink",
                              style: txt.snacks(),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '750ml',
                                style: txt.gram(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '₹40',
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
                          Pname: "Pepsi tin Soft Drink",
                          Pimage: "Assets/snacks/pepsi.jpg",
                          Pgram: '200ml',
                          Pprice: '₹80',
                        ),
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
                            child: Image.asset(
                              "Assets/snacks/pepsi.jpg",
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Pepsi tin Soft Drink",
                              style: txt.snacks(),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '200ml',
                                style: txt.gram(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '₹80',
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
                          Pname: "Fanta Tin soft Drink ",
                          Pimage: "Assets/snacks/fanta.jpg",
                          Pgram: '200ml',
                          Pprice: '₹80',
                        ),
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
                            child: Image.asset(
                              "Assets/snacks/fanta.jpg",
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Fanta Tin soft Drink ",
                              style: txt.snacks(),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '200ml',
                                style: txt.gram(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '₹80',
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
