// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadd/settings_page.dart';
import 'package:nadd/utilities/health_news_card.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'bot/chat_bot.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  var user = FirebaseAuth.instance.currentUser!;

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
              Color(0xffffffff),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(children: [
            //app bar with profile
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // Greetings
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //spacer
                      const SizedBox(
                        height: 20,
                      ),

                      Text(
                        '',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      //spacer
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),

                  //Profile Pic
                  GestureDetector(
                    onTap: () {
                      pushNewScreen(
                        context,
                        screen: SettingsPage(),
                        withNavBar: true, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40)),
                        child: Icon(
                          Icons.settings_outlined,
                          color: Color(0xff828282),
                        )),
                  ),
                ],
              ),
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
                            height: 30,
                          ),

                          Row(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/nadd_logo.png',
                                ),
                                height: 8,
                              ),
                            ],
                          ),

                          //spacer
                          SizedBox(
                            height: 30,
                          ),

                          Text(
                            'Hi, ${user.email!}',
                            //'Hi, user',
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff219653)),
                          ),
                          //spacer
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '''Welcome to Nakisa AI Digit Doctor. Get your personal digital doctor right in your pocket and get basic health services anytime and any where without booking an appointment.''',
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff828282)),
                          ),

                          //spacer
                          SizedBox(
                            height: 35,
                          ),

                          Row(
                            children: [
                              GestureDetector(
                                onTap: () => {
                                  pushNewScreen(
                                    context,
                                    screen: ChatBotPage(),
                                    withNavBar:
                                        false, // OPTIONAL VALUE. True by default.
                                    pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                  ),
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 35.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xff9B51E0),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Center(
                                      child: Text(
                                    'Start diagnosing',
                                    style: GoogleFonts.roboto(
                                        color: Color(0xffDDEDF9),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ),
                              )
                            ],
                          ),
                          //spacer
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Get latest news about health",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4F4F4F)),
                          ),
                        ]),
                  ),

                  //spacer
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        HeatlhNewsCard(
                          topic: "Get most diagnosed diseases",
                          pic: "assets/doctors.svg",
                        ),
                        HeatlhNewsCard(
                          topic: "Covid-19 latest news",
                          pic: "assets/medical_care.svg",
                        ),
                        HeatlhNewsCard(
                          topic: "Health news",
                          pic: "assets/medicine_test.svg",
                        ),
                        SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
