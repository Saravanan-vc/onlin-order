// ignore_for_file: prefer_const_constructors

import 'package:cookeme/core/txt.dart';
import 'package:flutter/material.dart';

class textForm extends StatelessWidget {
  final String label;
  final dynamic icon;
  final TextEditingController controller;
  final bool call;
  final bool pass;
  const textForm({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
    required this.call, required this.pass,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        obscureText: pass,
        onChanged: (value) {
          controller.text = value.trim();
        },
        validator: call == true
            ? (mail) {
                if (mail!.isEmpty) {
                  return "";
                }
                return null;
              }
            : (password) {
                if (password!.isEmpty) {
                  return '';
                }
                return null;
              },
        style: txt.label(),
        controller: controller,
        decoration: InputDecoration(
          label: Text(
            label,
            style: txt.label(),
          ),
          prefixIcon: Icon(
            icon,
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
          suffixIcon: controller.text.length > 9
              ? Icon(
                  Icons.task_alt,
                  color: Colors.green,
                  size: 32,
                )
              : null,
        ),
      ),
    );
  }
}
