import 'package:cookeme/Features/ScreenS/cart/model.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class cartController extends GetxController {
  List<cartfunction> Product = [];
  int count = 0;
  Increment() {
    count++;
    update();
  }

  Decrement() {
    count--;
    update();
  }

  Widget calculation() {
    int tolal = 0;
    for (int i = 0; i < Product.length; i++) {
      String a = "${Product[i].price}";
      tolal = tolal + int.parse(a);
    }
    return Text(
      "₹${tolal.toString()}",
      style: txt.Pprice(),
    );
  }

  void checkit(String name) {
    for (int i = 0; i < Product.length; i++) {
      if (name == Product[i].name) {
        Product.removeAt(i);
      }
    }
  }

  void addthelist(
    String image,
    String name,
    int price,
  ) {
    Product.add(
      cartfunction(
        image: image,
        name: name,
        price:price,
      ),
    );
  }
}
