import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadd/call/pages/index.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

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
          child: Column(children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: GestureDetector(
                              onTap: () => {
                                pushNewScreen(
                                  context,
                                  screen: IndexPage(),
                                  withNavBar:
                                      false, // OPTIONAL VALUE. True by default.
                                  pageTransitionAnimation:
                                      PageTransitionAnimation.cupertino,
                                ),
                              },
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xffA0A0A0),
                                        blurRadius: 2,
                                        offset: Offset(1, 2), // Shadow position
                                      ),
                                    ],
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xffF9E7FE),
                                        Color(0xffDAFCFC),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Row(children: [
                                  //text and button
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //spacer
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SvgPicture.asset(
                                          "assets/doctor_on_call.svg",
                                          height: 100,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "We can help you diagnose, check your symptoms and discover what might be causing them though our NADD bot.",
                                          style: GoogleFonts.roboto(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff828282)),
                                        ),

                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 8,
                                                  horizontal: 35.0),
                                              decoration: BoxDecoration(
                                                  color: Color(0xff9B51E0),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40)),
                                              child: Center(
                                                  child: Text(
                                                'Talk with a doctor',
                                                style: GoogleFonts.roboto(
                                                    color: Color(0xffDDEDF9),
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ]),
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
