import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptivePage extends StatefulWidget {
  final String topic;
  final String overview;
  final String symptoms;
  final String treatment;
  final String prevention;
  final String prognosis;
  const DescriptivePage({
    required this.topic,
    required this.overview,
    required this.prevention,
    required this.prognosis,
    required this.symptoms,
    required this.treatment,
  });

  @override
  State<DescriptivePage> createState() => _DescriptivePageState();
}

class _DescriptivePageState extends State<DescriptivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffDDEDF9),
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 15.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
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
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    children: [
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              widget.topic,
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4f4f4f)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 250,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xffA0A0A0),
                                      blurRadius: 2,
                                      offset: Offset(1, 2), // Shadow position
                                    ),
                                  ],
                                  color: Color(0xff013C8A),
                                  image: DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: AssetImage('assets/headache.jpg')),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Overview",
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4f4f4f)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.overview,
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  height: 1.5,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff828282)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ExpandableNotifier(
                              child: Column(
                                children: [
                                  Expandable(
                                    collapsed: ExpandableButton(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 0.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Symptoms",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff4f4f4f)),
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xff4f4f4f),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1,
                                            color: Color.fromARGB(
                                                255, 196, 196, 196),
                                          ),
                                        ],
                                      ),
                                    ),
                                    expanded: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 0, vertical: 10),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  widget.symptoms,
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      height: 1.5,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff828282)),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                              ]),
                                        ),
                                        ExpandableButton(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 0.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Symptoms",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff4f4f4f)),
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_up_outlined,
                                                  color: Color(0xff828282),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: Color.fromARGB(
                                              255, 196, 196, 196),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ExpandableNotifier(
                              child: Column(
                                children: [
                                  Expandable(
                                    collapsed: ExpandableButton(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 0.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Treatment",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff4f4f4f)),
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xff4f4f4f),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1,
                                            color: Color.fromARGB(
                                                255, 196, 196, 196),
                                          ),
                                        ],
                                      ),
                                    ),
                                    expanded: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 0, vertical: 10),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  widget.treatment,
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      height: 1.5,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff828282)),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                              ]),
                                        ),
                                        ExpandableButton(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 0.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Treatment",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff4f4f4f)),
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_up_outlined,
                                                  color: Color(0xff828282),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: Color.fromARGB(
                                              255, 196, 196, 196),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ExpandableNotifier(
                              child: Column(
                                children: [
                                  Expandable(
                                    collapsed: ExpandableButton(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 0.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Prevention",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff4f4f4f)),
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xff4f4f4f),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1,
                                            color: Color.fromARGB(
                                                255, 196, 196, 196),
                                          ),
                                        ],
                                      ),
                                    ),
                                    expanded: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 0, vertical: 10),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  widget.prevention,
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      height: 1.5,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff828282)),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                              ]),
                                        ),
                                        ExpandableButton(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 0.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Prevention",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff4f4f4f)),
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_up_outlined,
                                                  color: Color(0xff828282),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: Color.fromARGB(
                                              255, 196, 196, 196),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ExpandableNotifier(
                              child: Column(
                                children: [
                                  Expandable(
                                    collapsed: ExpandableButton(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 0.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Prognosis",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff4f4f4f)),
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xff4f4f4f),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1,
                                            color: Color.fromARGB(
                                                255, 196, 196, 196),
                                          ),
                                        ],
                                      ),
                                    ),
                                    expanded: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 0, vertical: 10),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  widget.prognosis,
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      height: 1.5,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff828282)),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                              ]),
                                        ),
                                        ExpandableButton(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 0.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Prognosis",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff4f4f4f)),
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_up_outlined,
                                                  color: Color(0xff828282),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: Color.fromARGB(
                                              255, 196, 196, 196),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
