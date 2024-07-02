// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scroll extends StatelessWidget {
  const scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      width: 58,
      child: FloatingActionButton(
        backgroundColor: Colors.black,
        elevation: 6,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Container(
              margin: EdgeInsets.only(top: 190, bottom: 100),
              width: 700,
              height: 300,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Newly Launched Categories")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 160,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black.withOpacity(0.03),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Headsets")),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      child: Image.asset(
                                        "Assets/snacks/air1.jpeg",
                                        scale: 4,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 160,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black.withOpacity(0.03),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Headsets")),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      child: Image.asset(
                                        "Assets/snacks/air1.jpeg",
                                        scale: 4,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black.withOpacity(0.03),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Headsets")),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      child: Image.asset(
                                        "Assets/snacks/air1.jpeg",
                                        scale: 4,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black.withOpacity(0.03),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Headsets")),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      child: Image.asset(
                                        "Assets/snacks/air1.jpeg",
                                        scale: 4,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black.withOpacity(0.03),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Headsets")),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      child: Image.asset(
                                        "Assets/snacks/air1.jpeg",
                                        scale: 4,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("In Spotlight"),
                      ),
                    ),
                  ],
                ),
              ),
              color: Colors.white,
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.bolt_fill,
              color: Colors.white,
              size: 28,
            ),
            Text(
              "NEW",
              style: txt.nwe(),
            ),
          ],
        ),
      ),
    );
  }
}
