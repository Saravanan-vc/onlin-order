// ignore_for_file: prefer_const_constructors

import 'package:cookeme/Features/Authentication/forgot/ViewModel/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class forgetP extends StatelessWidget {
  const forgetP({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<fogcontroller>(builder: (logic) {
      return Scaffold(
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: logic.emcF,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (logic.emcF.text.isNotEmpty) {
                        await logic.forget();
                      }
                    },
                    child: Text("Send code"),
                  ),
                ),
              ],
            ),
          ),
        )),
      );
    });
  }
}
