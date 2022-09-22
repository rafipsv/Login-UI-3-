// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ui/Screens/login_screens.dart';
import 'package:flutter_ui/widgets/signin_row.dart';
import 'package:flutter_ui/widgets/textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                      'aseets/images/register.png',
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
                          "Create",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        Text(
                          "Account",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.40,
                  child: MyTextField(
                    isPass: false,
                    hintText: "Name...",
                    borderColor: Colors.white,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.51,
                  child: MyTextField(
                    isPass: false,
                    hintText: "Email...",
                    borderColor: Colors.white,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.61,
                  child: MyTextField(
                    isPass: true,
                    hintText: "Password...",
                    borderColor: Colors.white,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.71,
                  left: MediaQuery.of(context).size.width * 0.13,
                  right: MediaQuery.of(context).size.width * 0.13,
                  child: SignInRow(
                    text: "Sign Up",
                    color: Colors.white,
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
                          onTap: (() {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: ((context) {
                                  return LoginScreen();
                                }),
                              ),
                            );
                          }),
                          child: Text(
                            
                            "Sign Up",
                            style: TextStyle(
                              color: Color.fromARGB(255, 70, 70, 70),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
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
