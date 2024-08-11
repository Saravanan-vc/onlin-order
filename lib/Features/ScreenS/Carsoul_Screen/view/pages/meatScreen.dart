// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/controller/Meat_controller.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/view/widgets/button_for.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/view/widgets/offerpage.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class Meatscreen extends StatelessWidget {
  const Meatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MeatController>(builder: (logic) {
      stdout.write(logic.products.length);
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              CupertinoIcons.back,
              size: 24,
            ),
          ),
          title: Text("MeatScreen"),
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5.h,
                crossAxisSpacing: 2,
                mainAxisExtent: 40.h),
            itemCount: logic.products.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(2),
                      height: 20.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl: "${logic.products[index].image}",
                          progressIndicatorBuilder: (context, url, progress) =>
                              SizedBox(
                            width: 200.0,
                            height: 100.0,
                            child: Shimmer.fromColors(
                              baseColor: Colors.grey.shade200,
                              highlightColor: Colors.grey.shade100,
                              child: Container(
                                width: 200.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        textAlign: TextAlign.left,
                        textScaler: TextScaler.noScaling,
                        "${logic.products[index].name}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          height: 1,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "${logic.products[index].gram}",
                          style: TextStyle(
                            height: 1,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: offerP(
                        height: 250,
                        width: 46.w,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          textScaler: TextScaler.noScaling,
                          "₹${logic.products[index].price}",
                          style: txt.price(),
                        ),
                        SizedBox(
                          width: 0.9.h,
                        ),
                        Text(
                          "₹${logic.products[index].oldprice}",
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                    Spacer(),
                    buttonfor_add(
                      hig: 5.h,
                      w: 45.w,
                      count: 0,
                       image: logic.products[index].image,
                      name: logic.products[index].name,
                      price: logic.products[index].price,
                    ),
                    Spacer(),
                  ],
                ),
              );
            },
          ),
        ),
      );
    });
  }
}
