// ignore_for_file: prefer_const_constructors

import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/addbutton.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Itemcard extends StatelessWidget {
  final dynamic image;
  final String Name;
  final int price;
  final String gram;
  final int oldprice;
  final int count;
  const Itemcard(
      {super.key,
      this.image,
      required this.Name,
      required this.price,
      required this.gram,
      required this.oldprice,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.2,
      height: 265,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(4),
            height: 265 / 2,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            Name,
            style: txt.snacks(),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                gram,
                style: txt.snacks(),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: GestureDetector(
                  onTap: () {
                    print("object");

                    showBottomSheet(
                        showDragHandle: F,
                        context: context,
                        builder: (g) => Container(
                              height: 250,
                              color: Colors.amber,
                            ));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.amber.shade200,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Get for 20% discount",
                            style: txt.snacks(),
                          ),
                          Icon(
                            CupertinoIcons.chevron_down,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "₹$price",
                style: txt.label(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "₹$oldprice",
                ),
                Mainadd(count: count),
              ],
            ),
          )
        ],
      ),
    );
  }
}
