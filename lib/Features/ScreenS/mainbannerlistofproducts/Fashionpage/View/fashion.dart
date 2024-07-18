// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/fetchingimage.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:cookeme/Features/ScreenS/mainbannerlistofproducts/Fashionpage/View_Model/fashioncontroller.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Fashionpagebanner extends StatelessWidget {
  Fashionpagebanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Fashioncontroller>(builder: (logic) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(80, 60),
                          bottomRight: Radius.elliptical(30, 10)),
                      child: Image.network(
                        // here to change the banner
                        "${logic.elctrical[1].image}",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.off(indexof());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white.withOpacity(
                                  0.8,
                                ),
                              ),
                              child: Icon(
                                CupertinoIcons.back,
                                color: Colors.black,
                                size: 50,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 80.0),
                  //   child: Center(
                  //     child: Text(
                  //       //Banner name is here
                  //       "Home Clean",
                  //       style: txt.Headingb(),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Top Deal 30% offer",
                    style: txt.offer(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Fetchingimage(
                    Name: "${logic.products[0].name}",
                    price: int.parse("${logic.products[0].price}"),
                    gram: "${logic.products[0].piece}",
                    oldprice: int.parse("${logic.products[0].oldprice}"),
                    count: 0,
                    image: logic.products[0].image,
                  ),
                  Fetchingimage(
                    Name: "${logic.products[1].name}",
                    price: int.parse("${logic.products[1].price}"),
                    gram: "${logic.products[1].piece}",
                    oldprice: int.parse("${logic.products[1].oldprice}"),
                    count: 0,
                    image: logic.products[1].image,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Fetchingimage(
                    Name: "${logic.products[2].name}",
                    price: int.parse("${logic.products[2].price}"),
                    gram: "${logic.products[2].piece}",
                    oldprice: int.parse("${logic.products[2].oldprice}"),
                    count: 0,
                    image: logic.products[2].image,
                  ),
                  Fetchingimage(
                    Name: "${logic.products[3].name}",
                    price: int.parse("${logic.products[3].price}"),
                    gram: "${logic.products[3].piece}",
                    oldprice: int.parse("${logic.products[3].oldprice}"),
                    count: 0,
                    image: logic.products[3].image,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      );
    });
  }
}
