import 'package:flutter/material.dart';

class Padd {
  static Padding horizontal(Widget child) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: child,
    );
  }

  static Padding all(Widget child) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: child,
    );
  }

  static Padding horonlyleft(Widget child) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: child,
    );
  }
}
