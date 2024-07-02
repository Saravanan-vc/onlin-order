// ignore_for_file: prefer_const_constructors

import 'package:cookeme/Features/Authentication/Sign_up/View_Models/controller.dart';
import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class formT extends StatelessWidget {
  const formT({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return GetBuilder<signcontroller>(builder: (logic) {
      return Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (value) {
                  // controller.text = value.trim();
                },
                // validator: call == true
                //     ? (mail) {
                //         if (mail!.isEmpty) {
                //           return "";
                //         }
                //         return null;
                //       }
                //     : (password) {
                //         if (password!.isEmpty) {
                //           return '';
                //         }
                //         return null;
                //       },
                style: txt.label(),
                // controller: controller,
                decoration: InputDecoration(
                  label: Text(
                    "First Name",
                    style: txt.label(),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 32,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  // suffixIcon: controller.text.length > 9
                  //     ? Icon(
                  //         Icons.task_alt,
                  //         color: Colors.green,
                  //         size: 32,
                  //       )
                  //     : null,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (value) {
                  // controller.text = value.trim();
                },
                // validator: call == true
                //     ? (mail) {
                //         if (mail!.isEmpty) {
                //           return "";
                //         }
                //         return null;
                //       }
                //     : (password) {
                //         if (password!.isEmpty) {
                //           return '';
                //         }
                //         return null;
                //       },
                style: txt.label(),
                // controller: controller,
                decoration: InputDecoration(
                  label: Text(
                    "Last Name",
                    style: txt.label(),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 32,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  // suffixIcon: controller.text.length > 9
                  //     ? Icon(
                  //         Icons.task_alt,
                  //         color: Colors.green,
                  //         size: 32,
                  //       )
                  //     : null,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (value) {
                  // controller.text = value.trim();
                },
                // validator: call == true
                //     ? (mail) {
                //         if (mail!.isEmpty) {
                //           return "";
                //         }
                //         return null;
                //       }
                //     : (password) {
                //         if (password!.isEmpty) {
                //           return '';
                //         }
                //         return null;
                //       },
                style: txt.label(),
                controller: logic.emc,
                decoration: InputDecoration(
                  label: Text(
                    "E-Mail",
                    style: txt.label(),
                  ),
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.black,
                    size: 32,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  // suffixIcon: controller.text.length > 9
                  //     ? Icon(
                  //         Icons.task_alt,
                  //         color: Colors.green,
                  //         size: 32,
                  //       )
                  //     : null,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (value) {
                  // controller.text = value.trim();
                },
                // validator: call == true
                //     ? (mail) {
                //         if (mail!.isEmpty) {
                //           return "";
                //         }
                //         return null;
                //       }
                //     : (password) {
                //         if (password!.isEmpty) {
                //           return '';
                //         }
                //         return null;
                //       },
                style: txt.label(),
                controller: logic.pac,
                decoration: InputDecoration(
                  label: Text(
                    "Password",
                    style: txt.label(),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                    size: 32,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  // suffixIcon: controller.text.length > 9
                  //     ? Icon(
                  //         Icons.task_alt,
                  //         color: Colors.green,
                  //         size: 32,
                  //       )
                  //     : null,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Male",
                    style: txt.label(),
                  ),
                  Checkbox(
                    value: logic.male,
                    onChanged: (v) {
                      logic.male = true;
                      logic.female = false;
                      logic.update();
                    },
                  ),
                  Text(
                    "Female",
                    style: txt.label(),
                  ),
                  Checkbox(
                    value: logic.female,
                    onChanged: (v) {
                      logic.male = false;
                      logic.female = true;
                      logic.update();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () async {
                if (logic.emc.text.isNotEmpty || logic.pac.text.isNotEmpty) {
                  await logic.signwithauth(
                      email: logic.emc.text, password: logic.pac.text);
                } else {
                  print("object");
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
                      'Sign',
                      style: txt.label1(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
