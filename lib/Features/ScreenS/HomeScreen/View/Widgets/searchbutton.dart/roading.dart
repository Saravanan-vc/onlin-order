// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/searchbutton.dart/animatte.dart';
import 'package:cookeme/core/txt.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: const Duration(milliseconds: 400),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Text(
              "Search ",
              style: txt.username(),
            ),
            animatedtext(),
          ],
        ),
      ),
    );
  }
}
