// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cookeme/Features/ScreenS/toysScreen/View/Widgets/Mainbanner.dart';
import 'package:cookeme/Features/ScreenS/toysScreen/View/Widgets/Rowsof/card.dart';
import 'package:cookeme/Features/ScreenS/toysScreen/View/Widgets/Rowsof/consol.dart';
import 'package:cookeme/Features/ScreenS/toysScreen/View/Widgets/Rowsof/gun.dart';
import 'package:cookeme/Features/ScreenS/toysScreen/View/Widgets/Rowsof/soft.dart';
import 'package:cookeme/Features/ScreenS/toysScreen/View/Widgets/smallbanner.dart';

import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Toyscreen extends StatelessWidget {
  const Toyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
              SizedBox(
                height: 100,
                child: AppBar(
                  backgroundColor: Colors.white,
                  title: Padding(
                    padding: const EdgeInsets.all(1.0),
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
                  bottom: TabBar(
                    dividerHeight: 0,
                    tabs: [
                      Tab(
                        child: Image.asset("Assets/snacks/soft.png"),
                      ),
                      Tab(
                        child: Image.asset("Assets/snacks/card.png"),
                      ),
                      Tab(
                        child: Image.asset("Assets/snacks/gu.png"),
                      ),
                      Tab(
                        child: Image.asset("Assets/snacks/cons.png"),
                      )
                    ],
                  ),
                  elevation: 0,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 500,
                child: TabBarView(
                  children: [
                    // first tab bar view widget
                    Softtoy(),
                    Cardtoy(),
                    Guntoy(),
                    ConsolToy(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
