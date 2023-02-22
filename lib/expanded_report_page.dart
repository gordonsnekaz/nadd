// ignore_for_file: use_key_in_widget_constructors

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandedReportPage extends StatelessWidget {
  final String topic;

  const ExpandedReportPage({required this.topic});

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
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    children: [
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              topic,
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4f4f4f)),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0xffA0A0A0),
                                      blurRadius: 2,
                                      offset: Offset(1, 2), // Shadow position
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
                                  borderRadius: BorderRadius.circular(8)),
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "This assesment was done by NADD bot",
                                    style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff4f4f4f)),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "12/03-2022",
                                        style: GoogleFonts.roboto(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff4f4f4f)),
                                        textAlign: TextAlign.end,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Summary",
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4f4f4f)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '''Migranes are severe, recurring headaches. This is a common condition. This condition often affects youmger adults (from teenagers through to middle-age), and tends to affects women more frequently than men. Migraine are usually accompined by nausea and sensitivity to light (photophobia) and  sound (phonophobia). Many, but not all, people expirience aura before a migraine. While numerous triggers of attacks are known, the cause of migraine is not well understood. ''',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  height: 1.5,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff828282)),
                            ),
                            const SizedBox(
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
                                                  "Possible causes",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff4f4f4f)),
                                                ),
                                                const Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xff4f4f4f),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(
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
                                                Row(
                                                  children: [
                                                    Text(
                                                      " - Severe headache \n - Vomiting \n - Nausea \n - Sensitivity to light (photophobia) \n - Sensitivity to sound (phonophobia)",
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 16,
                                                          height: 1.5,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: const Color(
                                                              0xff828282)),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
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
                                                  "Possible causes",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff4f4f4f)),
                                                ),
                                                const Icon(
                                                  Icons.arrow_drop_up_outlined,
                                                  color: Color(0xff828282),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const Divider(
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
                            const SizedBox(
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
                                                const Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xff4f4f4f),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(
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
                                                  '''Many people find that lying in a dark, quiet environment helps them manage the symptoms of migraine. Anti-inflammatory medications (ibuprofen, aspirin) may help to reduce the pain. For people who have severe headaches, triptan medications may be more helpful. People who suffer troublesome, recurrent migraines (more than two per month) may benefit from additional medications to reduce the frequency and severity of headaches.''',
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      height: 1.5,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff828282)),
                                                ),
                                                const SizedBox(
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
                                                const Icon(
                                                  Icons.arrow_drop_up_outlined,
                                                  color: Color(0xff828282),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const Divider(
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
                            const SizedBox(
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
                                                const Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xff4f4f4f),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(
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
                                                  '''Avoiding things which trigger migraines may help to prevent some headaches. These are different from person to person, but some common triggers are: emotional stress, not eating, some smells, certain weather, disturbed sleep, alcohol, smoke, etc. People who suffer troublesome, recurrent migraines (more than two per month) may benefit from medications which reduce the frequency and severity of headaches.''',
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      height: 1.5,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff828282)),
                                                ),
                                                const SizedBox(
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
                                                const Icon(
                                                  Icons.arrow_drop_up_outlined,
                                                  color: Color(0xff828282),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const Divider(
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
                            const SizedBox(
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
                                                const Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xff4f4f4f),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(
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
                                                  '''Migraines are often recurrent. If they are infrequent, most people find that they can manage their symptoms during migraine attacks. If they are frequent, regular medication may help reduce the number of days affected by migraine, and improve quality of life.''',
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      height: 1.5,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff828282)),
                                                ),
                                                const SizedBox(
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
                                                const Icon(
                                                  Icons.arrow_drop_up_outlined,
                                                  color: Color(0xff828282),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const Divider(
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
                            const SizedBox(
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
