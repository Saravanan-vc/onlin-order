// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/Card.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/MainBanner.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/carsoul.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/floating.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/newtostor.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Main_Banner(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Buy",
                    style: txt.offer(),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Snacks',
                    style: txt.secof(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            cardBanner(),
            SizedBox(
              height: 10,
            ),
            carsoul(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "New",
                    style: txt.offer(),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'in Store',
                    style: txt.secof(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Newtostor(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      floatingActionButton: scroll(),
    );
  }
}
