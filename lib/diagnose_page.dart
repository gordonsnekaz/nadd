import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadd/bot/chat_bot.dart';
import 'package:nadd/dentist.dart';
import 'package:nadd/skin_model_page.dart';
import 'package:nadd/utilities/specialist.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class DiagnosePage extends StatelessWidget {
  const DiagnosePage({Key? key}) : super(key: key);

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
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: GestureDetector(
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
                                        Text(
                                          "Hi,",
                                          style: GoogleFonts.roboto(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff219653)),
                                        ),
                                        //spacer
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Gordon",
                                          style: GoogleFonts.roboto(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff219653)),
                                        ),

                                        //spacer
                                        const SizedBox(
                                          height: 10,
                                        ),

                                        Text(
                                          "We can help you diagnose, check your symptoms and discover what might be causing them through our NADD bot.",
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
                                                'Start diagnosing',
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
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Specialists',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff4F4F4F)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 120,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                SizedBox(
                                  width: 25,
                                ),
                                GestureDetector(
                                  onTap: () => {
                                    pushNewScreen(
                                      context,
                                      screen: const DentistPage(),
                                      withNavBar:
                                          true, // OPTIONAL VALUE. True by default.
                                      pageTransitionAnimation:
                                          PageTransitionAnimation.cupertino,
                                    ),
                                  },
                                  child: const SpecialistCard(
                                    topic: "Dentist",
                                    summary:
                                        "Make your perfect smile even better.",
                                    picImage: "assets/teeth.jpg",
                                  ),
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                GestureDetector(
                                  onTap: () => {
                                    pushNewScreen(
                                      context,
                                      screen: const SkinModelPage(),
                                      withNavBar:
                                          true, // OPTIONAL VALUE. True by default.
                                      pageTransitionAnimation:
                                          PageTransitionAnimation.cupertino,
                                    ),
                                  },
                                  child: const SpecialistCard(
                                    topic: "Dermatology",
                                    summary:
                                        "The study of skin and its diseases",
                                    picImage: "assets/physician.jpg",
                                  ),
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                const SpecialistCard(
                                  topic: "Physician",
                                  summary: "Make sure ",
                                  picImage: "assets/doctor.jpg",
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                              ],
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
