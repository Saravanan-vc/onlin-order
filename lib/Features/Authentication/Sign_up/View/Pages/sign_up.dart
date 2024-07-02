// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:cookeme/Features/Authentication/Sign_up/View/widgets/form.dart';
import 'package:flutter/material.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign...UP",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    fontFamily: "play",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                formT(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
