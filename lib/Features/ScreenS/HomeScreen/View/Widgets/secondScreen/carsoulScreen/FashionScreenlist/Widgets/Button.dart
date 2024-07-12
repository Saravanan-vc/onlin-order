// ignore_for_file: prefer_const_constructors

import 'package:cookeme/core/paddingH.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Buttonforfashion extends StatefulWidget {
  int count;
  final double width;
  Buttonforfashion({super.key, required this.width, required this.count});

  @override
  State<Buttonforfashion> createState() => _ButtonforfashionState();
}

class _ButtonforfashionState extends State<Buttonforfashion> {
  @override
  Widget build(BuildContext context) {
    return Padd.all(
      GestureDetector(
        onTap: () {
          if (widget.count < 1) {
            Get.snackbar(
              backgroundColor: Colors.green.withOpacity(0.4),
              "Sucess",
              "Add to cart",
              colorText: Colors.white,
            );
            setState(() {
              widget.count++;
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
        child: widget.count < 1
            ? Container(
                width: widget.width,
                height: 34,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.red),
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: Center(
                    child: Text(
                      "Add",
                      style: txt.addp(),
                    ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.count--;
                          });
                          Get.snackbar(
                              "Removed", "Item as ben removed from cart",
                              animationDuration: Duration(seconds: 1),
                              duration: Duration(seconds: 1),
                              dismissDirection: DismissDirection.horizontal);
                        },
                        child: Icon(
                          CupertinoIcons.minus,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ),
                    Text(
                      "${widget.count}",
                      style: txt.label(),
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (widget.count == 1) {
                              Get.snackbar(
                                backgroundColor: Colors.red.withOpacity(0.4),
                                "Sorry",
                                "This is our last piece",
                                colorText: Colors.white,
                                animationDuration: Duration(seconds: 1),
                                duration: Duration(seconds: 1),
                                dismissDirection: DismissDirection.horizontal,
                              );
                            }
                          });
                        },
                        child: Icon(
                          CupertinoIcons.add,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                )),
      ),
    );
  }
}
