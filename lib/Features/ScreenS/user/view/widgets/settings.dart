// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Listsettings extends StatelessWidget {
  const Listsettings({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> name = [
      "Orders",
      "Customer Support &FAQ",
      "Addresses",
      "Refunds",
      "Profile",
      "Suggest Products",
      "General info",
      "Notifications",
    ];
    return ListView.builder(
      itemCount: name.length,
      shrinkWrap: T,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, Index) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "Assets/listoforders/$Index.png",
                          scale: 16,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          name[Index],
                          style: txt.label(),
                        ),
                      ],
                    ),
                    Icon(CupertinoIcons.forward)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  color: Colors.black.withOpacity(0.05),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
