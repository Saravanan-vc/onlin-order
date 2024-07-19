import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Saturdaypage extends StatelessWidget {
  const Saturdaypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.yellow, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
    //   child: Container(
    //     child:
    //         Lottie.asset("Assets/rive/Animation - 1721358027857 (1) (1).json"),
    //   ),
    // );
  }
}
