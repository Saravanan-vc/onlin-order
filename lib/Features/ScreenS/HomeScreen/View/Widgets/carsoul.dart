// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/carsoulScreen/Mansoon.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/carsoulScreen/meatScreen.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/carsoulScreen/sentScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class carsoul extends StatelessWidget {
  const carsoul({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 3,
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
                            Get.off(
                              Sentscreen(),
                              transition: Transition.cupertino,
                              duration: Duration(milliseconds: 950),
                            );
                          }
                        case 1: //Meat
                          {
                            Get.off(
                              Meatscreen(),
                              transition: Transition.cupertino,
                              duration: Duration(milliseconds: 950),
                            );
                          }
                        case 2: //monsoon
                          {
                            Get.off(
                              Mansoonscreen(),
                              transition: Transition.cupertino,
                              duration: Duration(milliseconds: 950),
                            );
                          }
                      }
                    },
                    child: Image.asset(
                      "Assets/snacks/banner$Index.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
        options: CarouselOptions(autoPlay: true, height: 180));
  }
}
