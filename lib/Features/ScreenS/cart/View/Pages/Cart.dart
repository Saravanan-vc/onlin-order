// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/cart/View_Model/logic.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class cartpage extends StatelessWidget {
  const cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<cartController>(builder: (logic) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "Cart",
          ),
          leading: GestureDetector(
              onTap: () {
                Get.off(indexof());
              },
              child: Icon(CupertinoIcons.back)),
          actions: logic.Product.length < 1
              ? null
              : [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text(
                          "Add More",
                          style: txt.label(),
                        ),
                      ),
                    ),
                  )
                ],
        ),
        body: logic.Product.length < 1
            ? Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Icon(
                      CupertinoIcons.shopping_cart,
                      size: 50,
                    ),
                    Text(
                      "your cart is empty",
                      style: txt.cartempty(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            : Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(0.8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.time,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "Delivery in 8 Minutes",
                              style: txt.nwe(),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(
                            Radius.circular(80),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.tag,
                                size: 16,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                  "₹20 saved! Add items worth ₹200 more for Free Delivery"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(width: 0.2)),
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.checkmark_seal_fill),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Views Coupens & offers",
                                  style: txt.label(),
                                ),
                              ],
                            ),
                            Icon(CupertinoIcons.forward)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      );
    });
  }
}
