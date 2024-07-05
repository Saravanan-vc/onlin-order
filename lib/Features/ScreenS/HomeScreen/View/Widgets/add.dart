// ignore_for_file: prefer_const_constructors

import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (count < 1) {
          Get.snackbar(
            backgroundColor: Colors.green.withOpacity(0.4),
            "Sucess",
            "Add to cart",
            colorText: Colors.white,
          );
          setState(() {
            count++;
          });
        } else {
          Get.snackbar(
            backgroundColor: Colors.red.withOpacity(0.4),
            "Sorry",
            "This is our last piece",
            colorText: Colors.white,
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.red),
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Text(
            "Add",
            style: txt.addp(),
          ),
        ),
      ),
    );
  }
}
