// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SignInRow extends StatelessWidget {
  final String text;
  final Color color;
  SignInRow({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                color: color, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 124, 123, 123),
            ),
            child: Icon(
              Icons.arrow_forward,
              size: 25,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
