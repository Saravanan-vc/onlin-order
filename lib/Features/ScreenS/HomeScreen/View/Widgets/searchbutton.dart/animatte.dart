import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';

class animatedtext extends StatefulWidget {
  const animatedtext({super.key});

  @override
  State<animatedtext> createState() => _animatedtextState();
}

class _animatedtextState extends State<animatedtext> {
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        RotateAnimatedText("Coca-cola", textStyle: txt.username()),
        RotateAnimatedText("Pepsi", textStyle: txt.username()),
        RotateAnimatedText("Montan dew", textStyle: txt.username()),
        RotateAnimatedText("Fanta", textStyle: txt.username()),
        RotateAnimatedText("Lays", textStyle: txt.username()),
        RotateAnimatedText("Kurkure", textStyle: txt.username()),
      ],
      repeatForever: true,
    );
  }
}
