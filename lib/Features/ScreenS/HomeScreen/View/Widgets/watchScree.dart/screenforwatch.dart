// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/itemcard.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/watchScree.dart/controller/wcontroller.dart';
import 'package:cookeme/Features/ScreenS/index/View/Pages/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Screenforwatch extends StatefulWidget {
  const Screenforwatch({super.key});

  @override
  State<Screenforwatch> createState() => _ScreenforwatchState();
}

class _ScreenforwatchState extends State<Screenforwatch> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Wcontroller>(
      builder: (logic) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Get.off(
                  indexof(),
                  transition: Transition.cupertino,
                  duration: const Duration(microseconds: 755),
                );
              },
              icon: Icon(CupertinoIcons.back),
            ),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Itemcard(
                    Name: "${logic.producted[2].name}",
                    price: int.parse('${logic.producted[2].price}'),
                    gram: "${logic.producted[2].piece}",
                    oldprice: int.parse('${logic.producted[2].oldprice}'),
                    count: 0,
                    image: '${logic.producted[2].image}',
                  ),
                  Itemcard(
                    Name: "${logic.producted[1].name}",
                    price: int.parse('${logic.producted[1].price}'),
                    gram: "${logic.producted[1].piece}",
                    oldprice: int.parse('${logic.producted[1].oldprice}'),
                    count: 0,
                    image: '${logic.producted[1].image}',
                  ),
                ],
              ),
              SizedBox(
                height: 120,
                child: GridView.builder(
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.all(8),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin:
                          index == 3 ? EdgeInsets.all(0) : EdgeInsets.all(10),
                      child: index == 0
                          ? Image.network(
                              "${logic.producted[4].image}",
                            )
                          : index == 1
                              ? Image.network("${logic.producted[5].image}")
                              : Image.network("${logic.producted[6].image}"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              CarouselSlider.builder(
                itemCount: logic.carsoul.length,
                itemBuilder: (context, index, Index) {
                  return Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(),
                    child: index == 0
                        ? Stack(
                            children: [
                              Container(
                                height: 120,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(9),
                                  child: Image.network(
                                    "${logic.carsoul[1].image}",
                                    fit: BoxFit.values[2],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "R O L E X ",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                          // dont forgot bro this
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(9),
                            child: Image.network(
                              "${logic.carsoul[0].image}",
                              fit: BoxFit.values[2],
                            ),
                          ),
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  height: 120,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
