// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool isPass;
  final Color borderColor;
  MyTextField({
    required this.hintText,
    required this.isPass,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 45),
      decoration: BoxDecoration(
        color: Colors.white,
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Color.fromARGB(255, 201, 201, 201),
            offset: Offset(2.0, 2.0),
            spreadRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: borderColor, width: 0),
      ),
      width: MediaQuery.of(context).size.width * 0.75,
      child: TextField(
        obscureText: isPass,
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor, width: 1)),
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: borderColor),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
