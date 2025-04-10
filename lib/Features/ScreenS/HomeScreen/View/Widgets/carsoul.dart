// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/view/pages/Mansoon.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/view/pages/meatScreen.dart';
import 'package:cookeme/Features/ScreenS/Carsoul_Screen/view/pages/sentScreen.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/Viw_model/carsoulimage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class carsoul extends StatelessWidget {
  const carsoul({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Carsoulimage>(
      builder: (logic) {
        print(logic.bannerc.length);
        return FutureBuilder(
          future: logic.fetchdata(),
          builder: (context, snapshot) => CarouselSlider.builder(
              itemCount: logic.bannerc.length,
              itemBuilder: (context, Index, Rindex) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          switch (Index) {
                            case 0: //sent
                              {
                                Get.to(
                                  Meatscreen(),
                                  transition: Transition.cupertino,
                                  duration: Duration(milliseconds: 950),
                                );
                              }
                            case 1: //Meat
                              {
                                Get.off(
                                  Mansoonscreen(),
                                  transition: Transition.cupertino,
                                  duration: Duration(milliseconds: 950),
                                );
                              }
                            case 2: //monsoon
                              {
                                Get.off(
                                  Sentscreen(),
                                  transition: Transition.cupertino,
                                  duration: Duration(milliseconds: 950),
                                );
                              }
                          }
                        },
                        child:CachedNetworkImage(
                                    imageUrl: "${logic.bannerc[Index].image}",
                                     progressIndicatorBuilder:
                                        (context, url, progress) => SizedBox(
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
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                      ),
                    ),
                  ),
              options: CarouselOptions(autoPlay: true, height: 180),),
        );
      },
    );
  }
}
