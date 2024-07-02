// ignore_for_file: prefer_const_constructors

import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';

class add extends StatelessWidget {
  const add({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('add');
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
