// ignore_for_file: prefer_const_constructors

import 'package:cookeme/Features/ScreenS/cart/View_Model/logic.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<cartController>(builder: (logic) {
      return GestureDetector(
        onTap: () {
          if (logic.count < 1) {
            logic.Product.add(1);
            print(logic.Product.length);
            logic.update();
            Get.snackbar(
              backgroundColor: Colors.green.withOpacity(0.4),
              "Sucess",
              "Add to cart",
              colorText: Colors.white,
            );
            setState(() {
              logic.Increment();
              
            });
          } else {
            Get.snackbar(
              backgroundColor: Colors.red.withOpacity(0.4),
              "Sorry",
              "This is our last piece",
              colorText: Colors.white,
              animationDuration: Duration(seconds: 2),
              dismissDirection: DismissDirection.horizontal,
            );
          }
        },
        child: logic.count < 1
            ? Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.red),
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: Text(
                    "Add",
                    style: txt.addp(),
                  ),
                ),
              )
            : Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.red),
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          logic.Product.removeLast();
                          print(logic.Product.length);
                          logic.update();
                          setState(() {
                            logic.Decrement();
                          });
                          Get.snackbar(
                              "Removed", "Item as ben removed from cart",
                              animationDuration: Duration(seconds: 2),
                              dismissDirection: DismissDirection.horizontal);
                        },
                        child: Icon(
                          CupertinoIcons.minus,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${logic.count}",
                      style: txt.num(),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (logic.count == 1) {
                              Get.snackbar(
                                backgroundColor: Colors.red.withOpacity(0.4),
                                "Sorry",
                                "This is our last piece",
                                colorText: Colors.white,
                                animationDuration: Duration(seconds: 2),
                                dismissDirection: DismissDirection.horizontal,
                              );
                            }
                          });
                        },
                        child: Icon(
                          CupertinoIcons.add,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                )),
      );
    });
  }
}
