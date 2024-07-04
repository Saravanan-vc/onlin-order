// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class indexof extends StatefulWidget {
  const indexof({super.key});

  @override
  State<indexof> createState() => _indexofState();
}

class _indexofState extends State<indexof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {},
                child: Icon(CupertinoIcons.home),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(CupertinoIcons.cart),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
