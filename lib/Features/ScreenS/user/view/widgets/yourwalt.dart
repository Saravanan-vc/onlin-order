// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Yourwalt extends StatelessWidget {
  const Yourwalt({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        height: 112,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.deepPurple.shade200,
          ),
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(117, 100, 180, 246),
              Colors.white,
              Colors.yellow.shade100
            ],
            transform: GradientRotation(-1),
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "Assets/rive/money.png",
                        scale: 16,
                      ), // money
                      Text(
                        "Your Walt",
                        style: txt.label(),
                      ),
                    ],
                  ),
                  Icon(CupertinoIcons.forward)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(
                thickness: 1.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "Assets/rive/wallet.png",
                        scale: 16,
                      ), // money
                      Text(
                        "Avaliable Balance :  ",
                        style: txt.label(),
                      ),
                      Text(
                        "0",
                        style: txt.label(),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      print("add money");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 2,
                          color: Colors.deepPurple.shade200,
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Colors.pink.shade400,
                            Colors.white,
                            Colors.red.shade400,
                          ],
                          transform: GradientRotation(-1),
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Add Money",
                          style: txt.label(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
