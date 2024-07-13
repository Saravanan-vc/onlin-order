// ignore_for_file: prefer_const_constructors

import 'package:cookeme/core/paddingH.dart';
import 'package:flutter/material.dart';

class Offerbanner extends StatelessWidget {
  final dynamic image;
  const Offerbanner({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    var W = MediaQuery.of(context).size.width;
    var H = MediaQuery.of(context).size.height;
    var hight = H / 5;
    var width = W / 1.3;
    return Padd.all(
      Container(
        width: width,
        height: hight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Center(
          child: Image.asset(
            image,
          ),
        ),
      ),
    );
  }
}
