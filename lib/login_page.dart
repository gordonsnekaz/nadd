// ignore_for_file: sized_box_for_whitespace

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadd/create_account_page.dart';
import 'auth_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controllers
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  Future login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _usernameController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            backgroundColor: Color(0xfff5f8ff),
            title: Text(
              'Wrong credentials',
              style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.red[400]),
            ),
            content: Text(
              'Wrong login details, please enter correct details to login.',
              style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff828282)),
            ),
          ));

  @override
  void dispose() {
    _passwordController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f8ff),
        body: SafeArea(
            child: Expanded(
          child: ListView(
            children: [
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    child: Image(image: AssetImage('assets/nadd_logo.png')),
                  ),
                  //Greetings
                  Text(
                    'Hello again!',
                    style: GoogleFonts.roboto(
                        color: Color(0xff219653),
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Welcome to NADD',
                    style: GoogleFonts.roboto(
                        color: Color(0xff4F4F4F), fontSize: 16),
                  ),

                  //spacer
                  SizedBox(height: 50),

                  //username textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Color(0xff9B51E0)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            fillColor: Color(0xff828282),
                            border: InputBorder.none,
                            hintText: 'Username',
                          ),
                        ),
                      ),
                    ),
                  ),

                  // spacer
                  SizedBox(height: 20),

                  //Password text field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Color(0xff9B51E0)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Color(0xff828282),
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ),
                  ),

                  //spacer
                  SizedBox(height: 30),

                  //Login button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: GestureDetector(
                      onTap: login,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Color(0xff9B51E0),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          'Login',
                          style: TextStyle(
                              color: Color(0xfff5f8ff),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        )),
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  //Create an account
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?',
                          style: GoogleFonts.roboto(
                            color: Color(0xff4F4F4F),
                            fontWeight: FontWeight.w400,
                          )),
                      GestureDetector(
                        onTap: () => {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()))
                        },
                        child: Text(
                          ' Create account',
                          style: GoogleFonts.roboto(
                            color: Colors.blue,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  //Guest user
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AuthPage()))
                        },
                        child: Text(
                          'Guest user',
                          style: GoogleFonts.roboto(
                            color: Colors.blue,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        )));
  }
}
