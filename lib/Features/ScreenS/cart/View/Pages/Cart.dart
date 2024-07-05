import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class cartpage extends StatelessWidget {
  const cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        leading: GestureDetector(
            onTap: () {
              Get.off(indexof());
            },
            child: Icon(CupertinoIcons.back)),
      ),
    );
  }
}
