// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
              color: Color.fromARGB(255, 28, 35, 56),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      child: PageView(
                        controller: _controller,
                        children: [
                          PageN(),
                          PageN(),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text("Create an account"),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
