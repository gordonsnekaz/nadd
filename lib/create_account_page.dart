import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadd/login_page.dart';

import 'homepage.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text controllers
  final _idController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  Future register() async {
    if (_idController.text != '' &&
        _newPasswordController.text != '' &&
        _confirmPasswordController != '') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      openDialog();
    }
  }

  Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text(
              'Error',
              style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.red[400]),
            ),
            content: Text(
              'Passwords don\'t match. Please enter correct details',
              style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff828282)),
            ),
          ));

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
                  //Greetings
                  Text(
                    'Hi,',
                    style: GoogleFonts.roboto(
                        color: Color(0xff219653),
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Please enter your details to create an account.',
                    style: GoogleFonts.roboto(
                        color: Color(0xff4F4F4F), fontSize: 12),
                  ),

                  //spacer
                  SizedBox(height: 50),

                  //fullname textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: const Color(0xff9B51E0)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: _idController,
                          decoration: InputDecoration(
                            fillColor: Color(0xff828282),
                            border: InputBorder.none,
                            hintText: 'I.D / Passport number',
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
                        border: Border.all(color: const Color(0xff9B51E0)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: _newPasswordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Color(0xff828282),
                            border: InputBorder.none,
                            hintText: 'Choose a Password',
                          ),
                        ),
                      ),
                    ),
                  ),

                  // spacer
                  SizedBox(height: 20),

                  //Confirm Password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: const Color(0xff9B51E0)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: _confirmPasswordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Color(0xff828282),
                            border: InputBorder.none,
                            hintText: 'Confrim Password',
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
                      onTap: register,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Color(0xff9B51E0),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          'Create account',
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
                      Text('Already have an account?',
                          style: GoogleFonts.roboto(
                            color: Color(0xff4F4F4F),
                            fontWeight: FontWeight.w400,
                          )),
                      GestureDetector(
                        onTap: () => {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()))
                        },
                        child: Text(
                          ' Login',
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
