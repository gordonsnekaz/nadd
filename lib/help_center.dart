import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadd/hospitals_list.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:video_player/video_player.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/alarm.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDDEDF9),
      body: Container(
        decoration: const BoxDecoration(
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
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () => {
                                    pushNewScreen(
                                      context,
                                      screen: HospitalsListPage(),
                                      withNavBar:
                                          true, // OPTIONAL VALUE. True by default.
                                      pageTransitionAnimation:
                                          PageTransitionAnimation.cupertino,
                                    ),
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color(0xffA0A0A0),
                                            blurRadius: 2,
                                            offset:
                                                Offset(1, 2), // Shadow position
                                          ),
                                        ],
                                        gradient: const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color(0xffF9E7FE),
                                            Color(0xffDAFCFC),
                                          ],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12)),
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
                                              height: 10,
                                            ),

                                            Text(
                                              "We can help locate nearest helping centers for you to get quick assistance and quick help.",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xff828282)),
                                            ),

                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 8,
                                                      horizontal: 35.0),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff9B51E0),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40)),
                                                  child: Center(
                                                      child: Text(
                                                    'View help centers',
                                                    style: GoogleFonts.roboto(
                                                        color:
                                                            Color(0xffDDEDF9),
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
                                const SizedBox(
                                  height: 120,
                                ),
                                Text(
                                  "To get instant medical or health assistance, double tap the below panic red button and leave it to beep for 10 seconds.",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xffEAAA08)),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onDoubleTap: () {
                                    setState(() {
                                      _controller.value.isPlaying
                                          ? _controller.pause()
                                          : _controller.play();
                                    });
                                  },
                                  child: Container(
                                    width: 140,
                                    height: 140,
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color(0xffA0A0A0),
                                            blurRadius: 2,
                                            offset:
                                                Offset(1, 2), // Shadow position
                                          ),
                                        ],
                                        color: const Color(0xffF63D68),
                                        borderRadius:
                                            BorderRadius.circular(120)),
                                    child: const Icon(
                                      Icons.health_and_safety_sharp,
                                      color: Color(0xffDDEDF9),
                                      size: 80,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40.0),
                                  child: Text(
                                    "To stop the emegency, press the panic button again within 10 seconds",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xffF63D68)),
                                    textAlign: TextAlign.center,
                                  ),
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
