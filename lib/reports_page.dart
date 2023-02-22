import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadd/expanded_report_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ReportsPage extends StatelessWidget {
  final headings = <String>[
    'Headache',
    'Covid-19',
    'Stomachache',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f8ff),
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Text(
                              "Medical Report",
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff219653)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    itemCount: headings.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey, width: 0.4))),
                        margin: const EdgeInsets.symmetric(vertical: 6.0),
                        child: GestureDetector(
                          onTap: () {
                            pushNewScreen(
                              context,
                              screen: ExpandedReportPage(
                                topic: headings[index],
                              ),
                              withNavBar:
                                  true, // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          },
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        headings[index],
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xff828282)),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.calendar_month_outlined,
                                            size: 16,
                                            color: Color(0xff9B51E0),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Nadd Bot - ' '12/07/2022',
                                            style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff828282)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ]),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: Color(0xff828282),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
