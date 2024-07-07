import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/add.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';

class ConsolToy extends StatelessWidget {
  const ConsolToy({super.key});

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
                            "Assets/toysection/consolToy/consol1.png",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Consol for multi plat form",
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
                            "Assets/toysection/consolToy/switch.webp",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Switch Consol Best for mobil game",
                            style: txt.snacks(),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '750 ml',
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
                                  '₹400',
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
                            "Assets/toysection/consolToy/fullset.webp",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "NINTEDO SWITCH full set with accessories",
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
                              '1 Peice',
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
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '₹6000',
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
                            "Assets/toysection/consolToy/specialedition.webp",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "NINTEDO Special Edition",
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
                                  const EdgeInsets.symmetric(horizontal: 7.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '₹950',
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
