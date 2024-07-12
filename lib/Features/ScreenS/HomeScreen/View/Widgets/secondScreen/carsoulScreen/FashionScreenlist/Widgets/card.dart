// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/carsoulScreen/FashionScreenlist/Widgets/Button.dart';
import 'package:cookeme/core/paddingH.dart';
import 'package:cookeme/core/sizedbox.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';

class cardfortstcg extends StatelessWidget {
  final dynamic image;
  final String Name;
  final String sizeandpiece;
  final int price;
  final int count;
  const cardfortstcg({
    super.key,
    this.image,
    required this.Name,
    required this.sizeandpiece,
    required this.price,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    var W = MediaQuery.of(context).size.width;
    var H = MediaQuery.of(context).size.height;
    var hight = H / 3;
    var width = W / 2.6;
    return Container(
      width: width,
      height: hight,
      child: Column(
        children: [
          Padd.all(
            Container(
              height: hight / 2.3,
              child: Image.asset(image),
            ),
          ),
          siz.Five(),
          Text(
            Name,
            style: txt.label(),
          ),
          Text(
            sizeandpiece,
            style: txt.gram(),
          ),
          siz.Five(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padd.horonlyleft(
              Text(
                "₹$price",
                style: txt.price(),
              ),
            ),
          ),
          siz.Five(),
          Buttonforfashion(
            count: count,
            width: width,
          ),
        ],
      ),
    );
  }
}
