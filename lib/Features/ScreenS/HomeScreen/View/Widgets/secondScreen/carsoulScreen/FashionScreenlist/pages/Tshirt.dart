// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/secondScreen/carsoulScreen/FashionScreenlist/Widgets/card.dart';
import 'package:flutter/material.dart';

class Tshirtpage extends StatelessWidget {
  const Tshirtpage({super.key});

  @override
  Widget build(BuildContext context) {
    var W = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              cardfortstcg(
                Name: "Jockey 2714 Men's ",
                count: 0,
                price: 499,
                sizeandpiece: "1 PC | size L ",
                image: "Assets/Fashion/Tshirt/blackT.png",
              ),
              cardfortstcg(
                Name: "Jockey 2784 Men's ",
                count: 0,
                price: 599,
                sizeandpiece: "1 PC | size L ",
                image: "Assets/Fashion/Tshirt/orangeT.jpeg",
              ),
            ],
          ),
          Row(
            children: [
              cardfortstcg(
                Name: "Jockey 2914 Men's ",
                count: 0,
                price: 499,
                sizeandpiece: "1 PC | size M ",
                image: "Assets/Fashion/Tshirt/redT.webp",
              ),
              cardfortstcg(
                Name: "Jockey Printed T-S ",
                count: 0,
                price: 799,
                sizeandpiece: "1 PC | size L ",
                image: "Assets/Fashion/Tshirt/whiteT.webp",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
