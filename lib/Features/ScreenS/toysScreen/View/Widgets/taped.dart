// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, dead_code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Taped extends StatefulWidget {
  const Taped({super.key});

  @override
  State<Taped> createState() => _TapedState();
}

class _TapedState extends State<Taped> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      dividerHeight: 0,
      tabs: [
        Tab(
          child: Container(
            child: Image.asset(
              "Assets/snacks/soft.png",
            ),
          ),
        ),
        Tab(
          child: Container(
            child: Image.asset(
              "Assets/snacks/card.png",
            ),
          ),
        ),
        Tab(
          child: Container(
            child: Image.asset(
              "Assets/snacks/gu.png",
            ),
          ),
        ),
        Tab(
          child: Container(
            child: Image.asset(
              "Assets/snacks/game-console.png",
            ),
          ),
        )
      ],
      indicatorColor: Colors.blue,
      controller: TabController(length: 4, vsync: this),
    );
  }
}
