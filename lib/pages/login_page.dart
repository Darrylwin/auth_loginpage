// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:myapp/componenets/auth_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../componenets/name_textfield.dart';
import '../componenets/page_n.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final PageController _controller = PageController();

  // controllers
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  PageController pageController = PageController();

  bool isVisible = true;
  bool isChecked = false;

  void onChanged(bool? value) {
    setState(() {
      isChecked = !isChecked;
    });
  }

  void Function(int)? onDotClicked(index) {
    pageController.animateToPage(
      index,
      duration: Duration(microseconds: 500),
      curve: Curves.linear,
    );
  }

  void Function()? visibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

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
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width / 2.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/montain.jpeg"),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      PageView(
                        controller: pageController,
                        children: [
                          PageN(
                            text1: "Capture Every Moment,",
                            text2:
                                "Let you turn your moments into masterpieces",
                            isLastPage: false,
                          ),
                          PageN(
                            text1: "Unleash Your Creativity,",
                            text2: "Explore new techniques and bring your ideas",
                            isLastPage: false,
                          ),
                          PageN(
                            text1: "Print Your Most Beautiful Memories,",
                            text2: "Transform your snapshots into unique",
                            isLastPage: true,
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 1,
                        left: MediaQuery.of(context).size.width / 7.5,
                        child: SmoothPageIndicator(
                          onDotClicked: onDotClicked,
                          effect: SlideEffect(
                            dotHeight: 2.5,
                            dotWidth: 22,
                            activeDotColor: Colors.white,
                            type: SlideType.normal,
                          ),
                          controller: pageController,
                          count: 3,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 27,
                    ),
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
                                  color:
                                      const Color.fromARGB(255, 141, 96, 220),
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
                            NameTextfield(
                              hintText: "First Name",
                              controller: firstNameController,
                            ),
                            SizedBox(width: 15),
                            NameTextfield(
                              hintText: "Last Name",
                              controller: lastNameController,
                            ),
                          ],
                        ),

                        SizedBox(height: 15),

                        //email textfield
                        Container(
                          color: Colors.grey.withOpacity(.15),
                          height: 42,
                          child: TextField(
                            controller: emailController,
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
                            obscureText: isVisible,
                            controller: passwordController,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: visibility,
                                child: isVisible
                                    ? Icon(
                                        Icons.visibility,
                                        color: Colors.grey,
                                      )
                                    : Icon(
                                        Icons.visibility_off,
                                        color: Colors.grey,
                                      ),
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
                              activeColor: Colors.white,
                              checkColor: Colors.black,
                              value: isChecked,
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
                                      color: const Color.fromARGB(
                                          255, 141, 96, 220),
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
                          height: 39,
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

                        SizedBox(height: 12),

                        // or register with section

                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: .4,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Or continue with",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: .4,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 12),

                        Row(
                          children: [
                            AuthButton(
                              path: "assets/google.png",
                              auth: "Google",
                            ),
                            SizedBox(width: 13),
                            AuthButton(
                              path: "assets/apple.png",
                              auth: "Apple",
                            ),
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
