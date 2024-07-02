// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';

class Main_Banner extends StatelessWidget {
  const Main_Banner({super.key});

  @override
  Widget build(BuildContext context) {
    // var w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            "BIG SALE",
            style: txt.big(),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Every Day",
                                        style: txt.snacks(),
                                      ),
                                      Text(
                                        " Snacks",
                                        style: txt.snacks(),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    child: Image.asset(
                                      "Assets/snacks/chco.jpeg",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Up t0",
                                        style: txt.snackss(Colors.blue),
                                      ),
                                      Text(
                                        " 50%",
                                        style: txt.snackss1(Colors.blue),
                                      ),
                                      Text(
                                        " OFF",
                                        style: txt.snackss(Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    child: Image.asset(
                                      "Assets/snacks/coca.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //1st
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2.0, vertical: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Every Day",
                                        style: txt.snacks(),
                                      ),
                                      Text(
                                        " Groceries",
                                        style: txt.snacks(),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    child: Image.asset(
                                      "Assets/snacks/as.png",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2.0, vertical: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Up t0",
                                        style: txt.snackss(Colors.red),
                                      ),
                                      Text(
                                        " 30%",
                                        style: txt.snackss1(Colors.red),
                                      ),
                                      Text(
                                        " OFF",
                                        style: txt.snackss(Colors.red),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    child: Image.asset(
                                      "Assets/snacks/gw.png",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //2nd
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2.0, vertical: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Every Day",
                                        style: txt.snacks(),
                                      ),
                                      Text(
                                        " Home Clean",
                                        style: txt.snacks(),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    child: Image.asset(
                                      "Assets/snacks/158.png",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: .0, vertical: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Up t0",
                                        style: txt.snackss(Colors.green),
                                      ),
                                      Text(
                                        " 40%",
                                        style: txt.snackss1(Colors.green),
                                      ),
                                      Text(
                                        " OFF",
                                        style: txt.snackss(Colors.green),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    child: Image.asset(
                                      "Assets/snacks/hp.png",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2.0, vertical: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Every Day",
                                        style: txt.snacks(),
                                      ),
                                      Text(
                                        "Eltronic",
                                        style: txt.snacks(),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    child: Image.asset(
                                      "Assets/snacks/jbl.jpeg",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2.0, vertical: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Up t0",
                                        style: txt.snackss(Colors.pink),
                                      ),
                                      Text(
                                        " 60%",
                                        style: txt.snackss1(Colors.pink),
                                      ),
                                      Text(
                                        " OFF",
                                        style: txt.snackss(Colors.pink),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    child: Image.asset(
                                      "Assets/snacks/air.png",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2.0, vertical: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Every Day",
                                        style: txt.snacks(),
                                      ),
                                      Text(
                                        " T-shirt",
                                        style: txt.snacks(),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    child: Image.asset(
                                      "Assets/snacks/shi.jpeg",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2.0, vertical: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Up t0",
                                        style: txt.snackss(Colors.blue),
                                      ),
                                      Text(
                                        " 54%",
                                        style: txt.snackss1(Colors.blue),
                                      ),
                                      Text(
                                        " OFF",
                                        style: txt.snackss(Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    child: Image.asset(
                                      "Assets/snacks/track.jpeg",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2.0, vertical: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Every Day",
                                        style: txt.snacks(),
                                      ),
                                      Text(
                                        " Watch",
                                        style: txt.snacks(),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    child: Image.asset(
                                      "Assets/snacks/wat.jpeg",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2.0, vertical: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Up t0",
                                        style: txt.snackss(Colors.cyanAccent),
                                      ),
                                      Text(
                                        " 84%",
                                        style: txt.snackss1(Colors.cyanAccent),
                                      ),
                                      Text(
                                        " OFF",
                                        style: txt.snackss(Colors.cyanAccent),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    child: Image.asset(
                                      "Assets/snacks/spek.png",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
