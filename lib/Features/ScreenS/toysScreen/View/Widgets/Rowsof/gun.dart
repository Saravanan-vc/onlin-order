// ignore_for_file: prefer_const_constructors

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/add.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';

class Guntoy extends StatelessWidget {
  const Guntoy({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print('Proudct');
                  },
                  child: Container(
                    height: 220,
                    width: w / 3.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 110,
                          width: double.infinity,
                          color: Colors.white,
                          child: Image.asset(
                            "Assets/toysection/gunToy/uzi.png",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "UZI model gun with lubber bulet's",
                            style: txt.snacks(),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '2 Piece',
                              style: txt.gram(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '₹350',
                                  style: txt.price(),
                                ),
                              ),
                            ),
                            add()
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print('Proudct');
                  },
                  child: Container(
                    height: 220,
                    width: w / 3.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 110,
                          width: double.infinity,
                          color: Colors.white,
                          child: Image.asset(
                            "Assets/toysection/gunToy/hand.jpeg",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "9MM hand Gun with rubber bult",
                            style: txt.snacks(),
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '1 Piece',
                              style: txt.gram(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '₹300',
                                  style: txt.price(),
                                ),
                              ),
                            ),
                            add()
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        //second row for prodcut
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print('Proudct');
                  },
                  child: Container(
                    height: 220,
                    width: w / 3.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 110,
                          width: double.infinity,
                          color: Colors.white,
                          child: Image.asset(
                            "Assets/toysection/gunToy/shot.jpg",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Short gun with rubber bulet",
                            style: txt.snacks(),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '1 Piece',
                              style: txt.gram(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '₹800',
                                  style: txt.price(),
                                ),
                              ),
                            ),
                            add()
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print('Proudct');
                  },
                  child: Container(
                    height: 220,
                    width: w / 3.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 110,
                          width: double.infinity,
                          color: Colors.white,
                          child: Image.asset(
                            "Assets/toysection/gunToy/m416.png",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Coca-Cola Soft Drink",
                            style: txt.snacks(),
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '1 Piece',
                              style: txt.gram(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '₹900',
                                  style: txt.price(),
                                ),
                              ),
                            ),
                            add()
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
