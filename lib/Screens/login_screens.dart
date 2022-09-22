// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ui/Screens/signup.dart';
import 'package:flutter_ui/widgets/signin_row.dart';
import 'package:flutter_ui/widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'aseets/images/login.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.1,
                  child: Container(
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        Text(
                          "Back",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.48,
                  child: MyTextField(
                    isPass: false,
                    hintText: "Email...",
                    borderColor: Colors.grey,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.59,
                  child: MyTextField(
                    isPass: true,
                    hintText: "Password...",
                    borderColor: Colors.grey,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.71,
                  left: MediaQuery.of(context).size.width * 0.13,
                  right: MediaQuery.of(context).size.width * 0.13,
                  child: SignInRow(
                    text: "Sign In",
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.85,
                  left: MediaQuery.of(context).size.width * 0.13,
                  right: MediaQuery.of(context).size.width * 0.13,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SignUpScreen();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Color.fromARGB(255, 49, 154, 206),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          "Forgot Password",
                          style: TextStyle(
                              color: Color.fromARGB(255, 49, 154, 206),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
