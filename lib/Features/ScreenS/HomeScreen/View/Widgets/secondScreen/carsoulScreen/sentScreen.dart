// ignore_for_file: prefer_const_constructors

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/carsoulScreen/FashionScreenlist/Widgets/card.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/Viw_model/productscontroller.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sentscreen extends StatelessWidget {
  const Sentscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<fetchproduct>(builder: (logic) {
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
          body: cardfortstcg(
            Name: "${logic.product[0].name}",
            count: 0,
            price: int.parse("${logic.product[0].price}"),
            sizeandpiece: "${logic.product[0].gram}",
            image: "${logic.product[0].image}",
          ));
    });
  }
}
