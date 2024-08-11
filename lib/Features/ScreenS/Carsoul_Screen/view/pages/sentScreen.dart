// ignore_for_file: prefer_const_constructors

import 'package:cookeme/Features/ScreenS/Carsoul_Screen/controller/Sent_controller.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/view/widgets/button_for.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/view/widgets/offerpage.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Sentscreen extends StatelessWidget {
  const Sentscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SentController>(builder: (logic) {
      return Scaffold(
        appBar: AppBar(
          elevation: 1,
          leading: IconButton(
            onPressed: () => Get.off(
              indexof(),
              transition: Transition.cupertino,
              duration: Duration(milliseconds: 950),
            ),
            icon: Icon(
              CupertinoIcons.back,
              size: 24,
            ),
          ),
          title: Text("SentScreen"),
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
                        child: Image.network(
                          '${logic.products[index].image}',
                          fit: BoxFit.cover,
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
                          "${logic.products[index].piece}",
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
