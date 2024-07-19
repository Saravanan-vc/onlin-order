import 'package:carousel_slider/carousel_slider.dart';
import 'package:cookeme/Features/ScreenS/user/view/pages/user.dart';
import 'package:cookeme/core/paddingH.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Fridayscreen extends StatelessWidget {
  const Fridayscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Padd.horizontal(
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(
                        const Userprofiel(),
                        transition: Transition.cupertino,
                        duration: const Duration(milliseconds: 950),
                      );
                    },
                    child: CircleAvatar(
                      child: Padd.all(
                        Image.asset(
                          "Assets/listoforders/4.png",
                          scale: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    "User name",
                    style: txt.usernaewithwhite(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padd.horonlyleft(
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder: (context, index) => Padd.all(
                    const CircleAvatar(
                      radius: 60,
                      backgroundColor: Color.fromARGB(149, 33, 149, 243),
                    ),
                  ),
                ),
              ),
            ),
            CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, Index) => Container(
                width: MediaQuery.of(context).size.width - 80,
                height: 180,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.white,
                      Color.fromARGB(149, 33, 149, 243),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              options: CarouselOptions(
                autoPlay: T,
                enlargeCenterPage: T,
                height: 180,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
