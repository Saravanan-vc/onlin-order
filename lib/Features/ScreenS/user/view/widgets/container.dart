// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Upgradepass extends StatelessWidget {
  const Upgradepass({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 128,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 20,
            height: 120,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.deepPurple.shade200,
              ),
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                colors: [
                  Colors.deepPurple.shade200,
                  Colors.blue.shade300,
                  Colors.white
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "Upgrad Pass",
                            style: txt.nwe(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "You would Potentially save ₹444",
                            style: txt.nwe(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "Per month with our store",
                            style: txt.nwe(),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      "Assets/rive/pass.png",
                      scale: 6,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: MediaQuery.of(context).size.width / 3.3,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Renew it now",
                style: txt.label(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
