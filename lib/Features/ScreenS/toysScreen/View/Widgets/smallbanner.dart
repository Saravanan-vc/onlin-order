// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';

class Smallbanner extends StatelessWidget {
  const Smallbanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 120,
          width: 115,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "0 - 3",
                  style: txt.label(),
                ),
                Text(
                  "years",
                  style: txt.label(),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 120,
          width: 115,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "4 - 7",
                style: txt.label(),
              ),
              Text(
                "years",
                style: txt.label(),
              ),
            ],
          )),
        ),
        Container(
          height: 120,
          width: 115,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "8+",
                style: txt.label(),
              ),
              Text(
                "years",
                style: txt.label(),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
