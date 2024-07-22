// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/searchbutton.dart/roading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class seachbuttonw extends StatefulWidget {
  const seachbuttonw({super.key});

  @override
  State<seachbuttonw> createState() => _seachbuttonwState();
}

class _seachbuttonwState extends State<seachbuttonw> {
  bool sel = T;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          sel = !sel;
        });
      },
      child: AnimatedContainer(
        height: sel ? 35 : 45,
        width: sel ? 35 : MediaQuery.of(context).size.width - 20,
        duration: const Duration(milliseconds: 350),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        curve: Curves.ease,
        child: sel
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        CupertinoIcons.search,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )
            : search(),
      ),
    );
  }
}
