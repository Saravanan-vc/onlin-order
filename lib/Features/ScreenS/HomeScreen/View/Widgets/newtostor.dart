// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';

class Newtostor extends StatelessWidget {
  const Newtostor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.black.withOpacity(0.09),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "New Toys",
                        style: txt.offer(),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        "Assets/snacks/gun.png",
                        scale: 8,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.black.withOpacity(0.09),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.black.withOpacity(0.09),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
              Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.black.withOpacity(0.09),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
