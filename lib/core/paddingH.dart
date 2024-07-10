import 'package:flutter/material.dart';

class Padd {

  static Padding horizontal(Widget child) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: child,
    );
  }
}
