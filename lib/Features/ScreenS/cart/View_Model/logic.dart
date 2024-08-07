import 'package:get/get.dart';

class cartController extends GetxController {
  List<int> Product = [];
  int count = 0;
  Increment() {
    count++;
    update();
  }

  Decrement() {
    count--;
    update();
  }
}
