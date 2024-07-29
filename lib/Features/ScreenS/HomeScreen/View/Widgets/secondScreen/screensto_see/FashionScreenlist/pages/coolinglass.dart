// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/screensto_see/FashionScreenlist/Widgets/card.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/screensto_see/FashionScreenlist/Widgets/offerBanner.dart';
import 'package:flutter/material.dart';

class Coolinglasspage extends StatelessWidget {
  const Coolinglasspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Offerbanner(
            image: "Assets/Fashion/track/offers.png",
          ),
          Row(
            children: [
              cardfortstcg(
                Name: "Cotton B-color",
                count: 0,
                price: 899,
                sizeandpiece: "1 PC | size 28 ",
                image: "Assets/Fashion/track/trackB.png",
              ),
              cardfortstcg(
                Name: "Collection of phants",
                count: 0,
                price: 899,
                sizeandpiece: "6 PC | size 30 ",
                image: "Assets/Fashion/track/collection.png",
              ),
            ],
          ),
          Row(
            children: [
              cardfortstcg(
                Name: "Jean Blue",
                count: 0,
                price: 999,
                sizeandpiece: "1 PC | size 22 ",
                image: "Assets/Fashion/track/trackJ.png",
              ),
              cardfortstcg(
                Name: "Formal slim fite",
                count: 0,
                price: 799,
                sizeandpiece: "1 PC | size 28 ",
                image: "Assets/Fashion/track/trackF.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
