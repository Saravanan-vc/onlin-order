// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/carsoulScreen/FashionScreenlist/Widgets/card.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/carsoulScreen/FashionScreenlist/Widgets/offerBanner.dart';
import 'package:flutter/material.dart';

class ShortPage extends StatelessWidget {
  const ShortPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Offerbanner(
            image: "Assets/Fashion/Short/shorts.png",
          ),
          Row(
            children: [
              cardfortstcg(
                Name: "NIKE men's Short ",
                count: 0,
                price: 999,
                sizeandpiece: "2 PC | size 28 ",
                image: "Assets/Fashion/Short/blueS.jpeg",
              ),
              cardfortstcg(
                Name: "Cotton Short men's ",
                count: 0,
                price: 599,
                sizeandpiece: "1 PC | size 30 ",
                image: "Assets/Fashion/Short/brownS.jpeg",
              ),
            ],
          ),
          Row(
            children: [
              cardfortstcg(
                Name: "Jean short",
                count: 0,
                price: 399,
                sizeandpiece: "1 PC | size 22 ",
                image: "Assets/Fashion/Short/blackS.jpeg",
              ),
              cardfortstcg(
                Name: "NIKE 202 collection",
                count: 0,
                price: 799,
                sizeandpiece: "1 PC | size M ",
                image: "Assets/Fashion/Short/nblueS.webp",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
