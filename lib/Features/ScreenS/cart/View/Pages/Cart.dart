// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cookeme/Features/ScreenS/cart/View_Model/logic.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class cartpage extends StatefulWidget {
  const cartpage({super.key});

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> size;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000))
      ..forward();
    size = Tween<Offset>(begin: Offset(-1, -1), end: Offset(0, 0))
        .animate(CurvedAnimation(parent: controller, curve: Curves.decelerate));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<cartController>(
      builder: (logic) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Cart",
            ),
            leading: IconButton(
              onPressed: () {
                Get.back(result: indexof());
              },
              icon: Icon(CupertinoIcons.back),
            ),
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
                                  "₹20 saved! Add items worth ₹200 more for Free Delivery",
                                ),
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
                      SizedBox(
                        height: 1.h,
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: logic.Product.length,
                          itemBuilder: (context, index) {
                            return Dismissible(
                              key: ValueKey(index),
                              child: Card(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: ListTile(
                                    leading: SizedBox(
                                      height: 10.h,
                                      width: 10.w,
                                      // child: SlideTransition(
                                      //   position: size,
                                      //   child: CachedNetworkImage(
                                      //       imageUrl:
                                      //           "${logic.Product[index].image}"),
                                      // )
                                      child: CachedNetworkImage(
                                          imageUrl:
                                              "${logic.Product[index].image}"),
                                    ),
                                    title: Text("${logic.Product[index].name}"),
                                    trailing: Text(
                                      '1 X  ₹${logic.Product[index].price}',
                                      style: txt.price(),
                                    ),
                                  ),
                                ),
                              ),
                              onDismissed: (direction) {
                                if (direction == DismissDirection.endToStart) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      behavior: SnackBarBehavior.floating,
                                      content: Text("remove from cart"),
                                    ),
                                  );
                                  logic.Product.removeAt(index);
                                  logic.update();
                                }
                              },
                            );
                          },
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("other : "),
                                  Text(
                                    'give location',
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "To pay",
                                          style: txt.slabel(),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: logic.calculation(),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        height: 5.h,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'CONTINUE TO PAYMENT',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
