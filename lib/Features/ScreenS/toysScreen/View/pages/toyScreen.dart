// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cookeme/Features/ScreenS/toysScreen/View/Widgets/Mainbanner.dart';
import 'package:cookeme/Features/ScreenS/toysScreen/View/Widgets/smallbanner.dart';
import 'package:cookeme/Features/ScreenS/toysScreen/View/Widgets/taped.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Toyscreen extends StatelessWidget {
  const Toyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Bannerfortoy(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    "Shop by ",
                    style: txt.cartempty(),
                  ),
                  Text(
                    "Age",
                    style: txt.carte(),
                  ),
                ],
              ),
            ),
            Smallbanner(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    "Explore the world of ",
                    style: txt.cartempty(),
                  ),
                  Text(
                    "Play",
                    style: txt.carte(),
                  ),
                ],
              ),
            ),
            Taped(),
          ],
        ),
      ),
    );
  }
}
