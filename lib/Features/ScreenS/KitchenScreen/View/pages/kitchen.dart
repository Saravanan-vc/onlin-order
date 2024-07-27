import 'package:carousel_slider/carousel_slider.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/addbutton.dart';
import 'package:cookeme/Features/ScreenS/KitchenScreen/View_Model/kitchen.dart';
import 'package:cookeme/Features/ScreenS/KitchenScreen/model/kitchemodel.dart';
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
    return GetBuilder<kitchen>(builder: (logic) {
      print(logic.fetcheddata.length);
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
                    1,
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
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.network(
                                "${logic.fetcheddata[index].kimage}",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              '${logic.fetcheddata[index].Kname}',
                              style: txt.price(),
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padd.horonlyleft(
                                Text(
                                  '${logic.fetcheddata[index].kpiece}',
                                  style: txt.gram(),
                                ),
                              ),
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padd.horonlyleft(
                                Text(
                                  '${logic.fetcheddata[index].kolprice}',
                                  style: txt.oldprice(),
                                ),
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      showBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return Container(
                                            height: 250,
                                            color: Colors.amber,
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.1,
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
                            ),
                            Spacer(),
                            Padd.horizontal(
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${logic.fetcheddata[index].kprice}',
                                    style: txt.price(),
                                  ),
                                  Mainadd(count: 0)
                                ],
                              ),
                            ),
                            Spacer(),
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
    });
  }
}
