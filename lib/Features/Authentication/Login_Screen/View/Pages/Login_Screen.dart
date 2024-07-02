// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cookeme/Features/Authentication/Login_Screen/View/Widgets/TextForm.dart';
import 'package:cookeme/Features/Authentication/Login_Screen/View/Widgets/forget.dart';
import 'package:cookeme/Features/Authentication/Login_Screen/View/Widgets/signup.dart';
import 'package:cookeme/Features/Authentication/Login_Screen/View_Model/controller.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return GetBuilder<controller>(builder: (logic) {
      return Scaffold(
        appBar: AppBar(),
        body: Form(
          key: _formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login...UP",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      fontFamily: "play",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  textForm(
                    call: true,
                    controller: logic.EmailC,
                    label: "E-mail",
                    pass: F,
                    icon: Icons.mail,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  textForm(
                    pass: T,
                    call: false,
                    controller: logic.PhoneC,
                    label: "Password",
                    icon: Icons.lock,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      forgetPassword(),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (logic.EmailC.text.isNotEmpty ||
                          logic.PhoneC.text.isNotEmpty) {
                        await logic.check();
                        SharedPreferences preferences =
                            await SharedPreferences.getInstance();
                        preferences.setBool("login", true);
                      } else {
                        Get.snackbar(
                          "Please check!",
                          "Email and Password",
                          backgroundColor: Colors.red,
                          colorText: Colors.white,
                        );
                      }
                    },
                    child: Container(
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Login',
                            style: txt.label1(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have account?",
                        style: txt.dc(),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Signup(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
