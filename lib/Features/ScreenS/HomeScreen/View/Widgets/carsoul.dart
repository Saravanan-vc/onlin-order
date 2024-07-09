// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carsoul extends StatelessWidget {
  const carsoul({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (context, Index, Rindex) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      switch (Index) {
                        case 0: //sent
                          {}
                        case 1: //Meat
                          {}
                        case 2: //monsoon
                          {}
                      }
                    },
                    child: Image.asset(
                      "Assets/snacks/banner$Index.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
        options: CarouselOptions(autoPlay: true, height: 180));
  }
}
