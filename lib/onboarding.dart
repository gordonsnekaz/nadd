import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadd/auth_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'utilities/intro_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //track for page
  final PageController _controller = PageController();

  //on last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 7);
            });
          },
          children: const [
            IntroPage1(
              topic: "Welcome to NADD",
              description:
                  'Nakisa AI Digital Doctor helps you diagnose, check your symptoms and discover what might be causing them.',
            ),
            IntroPage1(
              topic: "NADD Bot",
              description:
                  'Analyze your symptoms right away. Our AI-powered Symptom Checker that analyzes your symptoms, identify likely causes, and suggest solutions.',
            ),
            IntroPage1(
              topic: "NADD Specialists",
              description:
                  'Nakisa AI Digital Doctor helps you diagnose, check your symptoms and discover what might be causing them.',
            ),
            IntroPage1(
              topic: "NADD Feeds",
              description:
                  'Nakisa AI Digital Doctor helps you diagnose, check your symptoms and discover what might be causing them.',
            ),
            IntroPage1(
              topic: "NADD Call",
              description:
                  'Nakisa AI Digital Doctor helps you diagnose, check your symptoms and discover what might be causing them.',
            ),
            IntroPage1(
              topic: "NADD Pannic Button",
              description:
                  'Nakisa AI Digital Doctor helps you diagnose, check your symptoms and discover what might be causing them.',
            ),
            IntroPage1(
              topic: "NADD Reports",
              description:
                  'Nakisa AI Digital Doctor helps you diagnose, check your symptoms and discover what might be causing them.',
            ),
            IntroPage1(
              topic: "NADD Profile",
              description:
                  'Nakisa AI Digital Doctor helps you diagnose, check your symptoms and discover what might be causing them.',
            ),
          ],
        ),

        //dot indicators
        Container(
          padding: const EdgeInsets.only(bottom: 60.0),
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //dot indicators
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 8,
                    effect: const ExpandingDotsEffect(
                        //radius: 6.0,
                        dotWidth: 12.0,
                        dotHeight: 2.0,
                        dotColor: Color(0xffE0E0E0),
                        activeDotColor: Color(0xff9B51E0)),
                  ),

                  //spacer
                  const SizedBox(
                    height: 30.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //skip
                      GestureDetector(
                          onTap: () => {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const AuthPage()))
                              },
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                            decoration: BoxDecoration(
                                color: const Color(0xfff5f8ff),
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: [
                                Center(
                                    child: Text(
                                  'Skip',
                                  style: GoogleFonts.roboto(
                                      color: const Color(0xff9B51E0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )),
                              ],
                            ),
                          )),

                      //next or done
                      onLastPage
                          ? GestureDetector(
                              onTap: () => {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AuthPage()))
                                  },
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 10, 30, 10),
                                decoration: BoxDecoration(
                                    color: const Color(0xff9B51E0),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  children: [
                                    Center(
                                        child: Text(
                                      'Done',
                                      style: GoogleFonts.roboto(
                                          color: Color(0xfff5f8ff),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )),
                                  ],
                                ),
                              ))
                          : GestureDetector(
                              onTap: () {
                                _controller.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 10, 20, 10),
                                decoration: BoxDecoration(
                                    color: const Color(0xff9B51E0),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  children: [
                                    Center(
                                        child: Text(
                                      'Next',
                                      style: GoogleFonts.roboto(
                                          color: const Color(0xfff5f8ff),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )),
                                    //spacer
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(
                                      Icons.arrow_forward,
                                      color: Color(0xfff5f8ff),
                                      size: 20,
                                    )
                                  ],
                                ),
                              )),
                    ],
                  )
                ],
              )),
        )
      ]),
    );
  }
}
