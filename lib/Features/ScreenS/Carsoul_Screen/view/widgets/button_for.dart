import 'package:cookeme/Features/ScreenS/cart/View_Model/logic.dart';
import 'package:cookeme/Features/ScreenS/cart/model.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class buttonfor_add extends StatefulWidget {
  final double hig;
  final double w;
  String image;
  String name;
  int price;
  int count;
  buttonfor_add(
      {super.key,
      required this.hig,
      required this.w,
      required this.count,
      required this.image,
      required this.name,
      required this.price});

  @override
  State<buttonfor_add> createState() => _buttonfor_addState();
}

class _buttonfor_addState extends State<buttonfor_add> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<cartController>(builder: (logic) {
      return GestureDetector(
        onTap: () {
          if (widget.count < 1) {
            logic.addthelist(widget.image, widget.name, widget.price);
            Get.snackbar(
              backgroundColor: Colors.green.withOpacity(0.4),
              "Sucess",
              "Add to cart",
              colorText: Colors.white,
              animationDuration: Duration(seconds: 2),
              dismissDirection: DismissDirection.horizontal,
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
                width: widget.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.red),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Add",
                    style: txt.addp(),
                  ),
                ),
              )
            : Container(
                height: widget.hig,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.red),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.count--;
                          });
                          logic.checkit(widget.name);
                          Get.snackbar(
                              "Removed", "Item as ben removed from cart",
                              animationDuration: const Duration(seconds: 1),
                              duration: const Duration(seconds: 1),
                              dismissDirection: DismissDirection.horizontal);
                        },
                        child: const FittedBox(
                          child: Icon(
                            CupertinoIcons.minus,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${widget.count}",
                      style: txt.num(),
                    ),
                    const SizedBox(
                      width: 10,
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
                                animationDuration: const Duration(seconds: 1),
                                duration: const Duration(seconds: 1),
                                dismissDirection: DismissDirection.horizontal,
                              );
                            }
                          });
                        },
                        child: const FittedBox(
                          child: Icon(
                            CupertinoIcons.add,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
      );
    });
  }
}
