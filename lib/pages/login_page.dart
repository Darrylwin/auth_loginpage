// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../componenets/name_textfield.dart';
import '../componenets/page_n.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  PageController _controller = PageController();

  void Function(bool?)? onChanged;

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
                                  color: const Color.fromARGB(255, 141, 96, 220),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        // name textfilds
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NameTextfield(hintText: "First Name"),
                            SizedBox(width: 15),
                            NameTextfield(hintText: "Last Name"),
                          ],
                        ),

                        SizedBox(height: 15),

                        //email textfield
                        Container(
                          color: Colors.grey.withOpacity(.15),
                          height: 42,
                          child: TextField(
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              border: const OutlineInputBorder(),
                              fillColor: const Color.fromARGB(255, 81, 98, 150),
                            ),
                          ),
                        ),

                        SizedBox(height: 15),

                        //password textfield
                        Container(
                          color: Colors.grey.withOpacity(.15),
                          height: 42,
                          child: TextField(
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.visibility,
                                color: Colors.grey,
                              ),
                              hintText: "Enter Your Password",
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              border: const OutlineInputBorder(),
                              fillColor: const Color.fromARGB(255, 81, 98, 150),
                            ),
                          ),
                        ),

                        SizedBox(height: 15),

                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: onChanged,
                            ),
                            SizedBox(width: 9),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "I agree to the ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  TextSpan(
                                    text: "Terms and Conditions",
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 141, 96, 220),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 24),

                        // create account button
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 141, 96, 220),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                            child: Text(
                              "Create account",
                              style: TextStyle(
                                color: Colors.white,
                                // fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
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
