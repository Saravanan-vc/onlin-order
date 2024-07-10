// ignore_for_file: prefer_const_constructors

import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mansoonscreen extends StatelessWidget {
  const Mansoonscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          onPressed: () => Get.off(
            indexof(),
          ),
          icon: Icon(
            CupertinoIcons.back,
            size: 24,
          ),
        ),
        title: Text("Mansoon"),
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
    );
  }
}
