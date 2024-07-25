import 'package:carousel_slider/carousel_slider.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/addbutton.dart';
import 'package:cookeme/core/paddingH.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class KitchenScreen extends StatelessWidget {
  const KitchenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var wh = 95.w;
    var mw = MediaQuery.of(context).size.width;
    var mh = MediaQuery.of(context).size.height;
    ScrollController scrollController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: <Widget>[
            CarouselSlider.builder(
              itemCount: 4,
              itemBuilder: (context, index, Index) {
                return Container(
                  width: wh,
                  decoration: BoxDecoration(
                    color: Colors.blue[index == 0 ? 100 : index * 200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text("width: ${wh}"),
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                height: 30.h,
                viewportFraction: 1,
                enlargeCenterPage: true,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              height: 55.h,
              width: double.infinity,
              child: GridView.count(
                crossAxisSpacing: 1.h,
                mainAxisSpacing: 1.h,
                crossAxisCount: 2,
                childAspectRatio: 100.w / 99.9.h,
                children: List.generate(
                  3,
                  (index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            width: mw,
                            height: mh / 4,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Text(
                            'name of the product',
                            style: txt.price(),
                          ),
                          SizedBox(
                            height: mh / 80,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padd.horonlyleft(
                              Text(
                                '1 Piece',
                                style: txt.gram(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: mh / 80,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padd.horonlyleft(
                              Text(
                                '₹2800',
                                style: txt.oldprice(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: mh / 80,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: GestureDetector(
                                  onTap: () {
                                    print("object");

                                    showBottomSheet(
                                      showDragHandle: false,
                                      context: context,
                                      builder: (g) => Container(
                                        height: 250,
                                        color: Colors.amber,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2.1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.amber.shade200,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: mh / 90,
                          ),
                          Padd.horizontal(
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '₹2500',
                                  style: txt.price(),
                                ),
                                Mainadd(count: 0)
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
