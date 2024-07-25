// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/Card.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/MainBanner.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/carsoul.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/floating.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/newtostor.dart';
import 'package:cookeme/Features/ScreenS/weeklybasedscreens/Saturday.dart';
import 'package:cookeme/Features/ScreenS/weeklybasedscreens/fridayScreen.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  final ScrollController _scrollc = ScrollController();

  @override
  Widget build(BuildContext context) {
    // var currentDay = DateFormat("EEEE").format(DateTime.now());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: _scrollc,
        child: Column(
          children: [
            check("Thursday"),
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

  check(String currentday) {
    Map find = {
      "Monday": Container(
        height: 200,
        width: double.infinity,
        color: Colors.grey,
        child: Center(
          child: Text("monday"),
        ),
      ),
      "Tuesday": Container(
        height: 200,
        width: double.infinity,
        color: Colors.green,
        child: Center(
          child: Text("tuesday"),
        ),
      ),
      "Wednesday": Container(
        height: 200,
        width: double.infinity,
        color: Colors.red,
        child: Center(
          child: Text("wednesday"),
        ),
      ),
      "Thursday": Main_Banner(),
      "Friday": Fridayscreen(),
      "Saturday": Saturdaypage(),
      "Sunday": Container(
        height: 200,
        width: double.infinity,
        color: Colors.cyanAccent,
        child: Center(
          child: Text("Sunday"),
        ),
      ),
    };

    return find[currentday] ??
        Container(
          child: Text("no"),
        );
  }
}
