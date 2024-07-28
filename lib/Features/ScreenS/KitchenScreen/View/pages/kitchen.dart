import 'package:carousel_slider/carousel_slider.dart';
import 'package:cookeme/Features/ScreenS/HomeScreen/View/Widgets/addbutton.dart';
import 'package:cookeme/Features/ScreenS/KitchenScreen/View/Widgets/bottowSheet.dart';
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
    return GetBuilder<kitchen>(
      builder: (logic) {
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
                  itemCount: 3,
                  itemBuilder: (context, index, Index) {
                    return Container(
                      width: wh,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: index == 1
                            ? Image.network("${logic.fetcheddata[4].kimage}")
                            : index == 2
                                ? Image.network(
                                    "${logic.fetcheddata[5].kimage}",
                                    fit: BoxFit.fill,
                                  )
                                : Image.network(
                                    "${logic.fetcheddata[6].kimage}",
                                  ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    height: 27.h,
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
                    childAspectRatio: 100.w / 88.h,
                    children: List.generate(
                      4,
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
                              Bottowsheet(),
                              Spacer(),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padd.horonlyleft(
                                  Text(
                                    '₹${logic.fetcheddata[index].kolprice}',
                                    style: txt.oldprice(),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padd.horizontal(
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '₹${logic.fetcheddata[index].kprice}',
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
      },
    );
  }
}
