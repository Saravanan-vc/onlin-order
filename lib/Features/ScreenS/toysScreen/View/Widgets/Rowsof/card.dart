import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/add.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';

class Cardtoy extends StatelessWidget {
  const Cardtoy({super.key});

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
                            "Assets/toysection/cardToy/uno.jpg",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Harry Potter special Edition in UNO",
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
                            "Assets/toysection/cardToy/pokemon.jpeg",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Pokemon Special Edition",
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
                            "Assets/toysection/cardToy/ace.webp",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Ace 'you' based Card",
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
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '₹140',
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
                            "Assets/toysection/cardToy/ludo.png",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "LUDO king  board 4x4 Player",
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
                                  '₹200',
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
