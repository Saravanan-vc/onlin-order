import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bottowsheet extends StatelessWidget {
  double height;
  Bottowsheet({super.key, this.height = 250});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: GestureDetector(
            onTap: () {
              showBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: height,
                    color: Colors.amber,
                  );
                },
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 2.1,
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
                    const Icon(
                      CupertinoIcons.chevron_down,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
