import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadd/descriptive_page.dart';
import 'package:nadd/news_description.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CovidNewsPage extends StatelessWidget {
  final headings = <String>[
    'Headache',
    'Covid-19',
    'Stomachache',
  ];

  var list = [
    {
      "topic": "John",
      "causes": 30,
      "solution": ["Ford", "BMW", "Fiat"]
    },
    {
      "name": "John",
      "age": 30,
      "cars": ["Ford", "BMW", "Fiat"]
    },
    {
      "name": "John",
      "age": 30,
      "cars": ["Ford", "BMW", "Fiat"]
    },
  ];

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
            child: Column(
              children: [
                Container(
                  //color: Color(0xffE7F1FF),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 15.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: const [
                              Icon(
                                Icons.arrow_back,
                                color: Color(0xff828282),
                                size: 20,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  //color: Color(0xffE7F1FF),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                      right: 25.0,
                      top: 5.0,
                      bottom: 15.0,
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: [
                              Text(
                                "Covid-19 latest news",
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
                              screen: NewsDescriptionPage(
                                topic: headings[index],
                                description: 'Test',
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                          Text(
                                            'read more...',
                                            style: GoogleFonts.roboto(
                                                fontSize: 12,
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
