// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDDEDF9),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffDDEDF9),
              Color(0xffFFFFFF),
            ],
          ),
        ),
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //app bar with profile
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                  decoration: BoxDecoration(
                      color: Color(0xffDDEDF9),
                      borderRadius: BorderRadius.circular(40)),
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: Color(0xff828282),
                  )),
            ),

            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                'Settings',
                                style: GoogleFonts.roboto(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff828282)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              FirebaseAuth.instance.signOut();
                            },
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.logout_outlined,
                                  size: 16,
                                  color: Color(0xffEB5757),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Log out',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xffEB5757)),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  //spacer

                  //Here
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
