// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../componenets/name_textfield.dart';
import '../componenets/page_n.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFF566AA6),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(10),
            color: Color.fromARGB(255, 28, 35, 56),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.3,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create an account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 7),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Already Have an Account?  ",
                                style: TextStyle(color: Colors.white),
                              ),
                              TextSpan(
                                text: "Log in",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        // name textfilds
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NameTextfield(hintText: "First Name"),
                            SizedBox(width: 15),
                            NameTextfield(hintText: "Last Name"),
                          ],
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
