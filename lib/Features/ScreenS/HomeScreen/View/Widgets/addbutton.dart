import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Mainadd extends StatefulWidget {
  int count;
  Mainadd({super.key, required this.count});

  @override
  State<Mainadd> createState() => _MainaddState();
}

class _MainaddState extends State<Mainadd> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.count < 1) {
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
              height: 27.55,
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
                        setState(() {
                          widget.count--;
                        });
                        Get.snackbar("Removed", "Item as ben removed from cart",
                            animationDuration: Duration(seconds: 1),
                            duration: Duration(seconds: 1),
                            dismissDirection: DismissDirection.horizontal);
                      },
                      child: FittedBox(
                        child: Icon(
                          CupertinoIcons.minus,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${widget.count}",
                    style: txt.num(),
                  ),
                  SizedBox(
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
                              animationDuration: Duration(seconds: 1),
                              duration: Duration(seconds: 1),
                              dismissDirection: DismissDirection.horizontal,
                            );
                          }
                        });
                      },
                      child: FittedBox(
                        child: Icon(
                          CupertinoIcons.add,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ),
                  )
                ],
              )),
    );
  }
}
