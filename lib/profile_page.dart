// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expandable/expandable.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var user = FirebaseAuth.instance.currentUser!;
  bool isSwitched = false;

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
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0xffA0A0A0),
                                        blurRadius: 2,
                                        offset: Offset(1, 2), // Shadow position
                                      ),
                                    ],
                                    color: const Color(0xff9B51E0),
                                    borderRadius: BorderRadius.circular(120)),
                                child: const Icon(
                                  Icons.person_outline,
                                  color: Color(0xffDDEDF9),
                                  size: 25,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                user.email!,
                                style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    color: Color.fromRGBO(158, 158, 158, 1),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
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
                                              horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Allergies and Reactions",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff828282)),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xff828282),
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
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.remove_circle,
                                                    color: Colors.red,
                                                    size: 18,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "reaction",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff828282)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.remove_circle,
                                                    color: Colors.red,
                                                    size: 18,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "allergy",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff828282)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 14,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.add_circle,
                                                    color: Colors.green,
                                                    size: 18,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "add allergy or reaction",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.blue),
                                                  ),
                                                ],
                                              ),
                                            ]),
                                      ),
                                      ExpandableButton(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Allergies and Reactions",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff828282)),
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
                                        color:
                                            Color.fromARGB(255, 196, 196, 196),
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
                                              horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Emergency Contacts",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff828282)),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xff828282),
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
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.remove_circle,
                                                    color: Colors.red,
                                                    size: 18,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "mother",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff828282)),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    height: 18,
                                                    width: 1,
                                                    color: Color(0xff828282),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "Mom",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff828282)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.remove_circle,
                                                    color: Colors.red,
                                                    size: 18,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "wife",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff828282)),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    height: 18,
                                                    width: 1,
                                                    color: Color(0xff828282),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "Sweet Bae",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff828282)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 14,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.add_circle,
                                                    color: Colors.green,
                                                    size: 18,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "add emergence contact",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.blue),
                                                  ),
                                                ],
                                              ),
                                            ]),
                                      ),
                                      ExpandableButton(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Emergency Contacts",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff828282)),
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
                                        color:
                                            Color.fromARGB(255, 196, 196, 196),
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
                                              horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Medical Notes",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff828282)),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xff828282),
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
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Flexible(
                                                    child: TextField(
                                                      minLines: 1,
                                                      maxLines: 5,
                                                      decoration:
                                                          InputDecoration(
                                                        fillColor:
                                                            Color(0xff828282),
                                                        border:
                                                            InputBorder.none,
                                                        hintText:
                                                            'Medical notes about a patients a put here and will show on the profile page for easy acces',
                                                      ),
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color(
                                                              0xff828282)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ]),
                                      ),
                                      ExpandableButton(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Medical Notes",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff828282)),
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
                                        color:
                                            Color.fromARGB(255, 196, 196, 196),
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
                                              horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Medications",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff828282)),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xff828282),
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
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.remove_circle,
                                                    color: Colors.red,
                                                    size: 18,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "disease",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff828282)),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    height: 18,
                                                    width: 1,
                                                    color: Color(0xff828282),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "Cure",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff828282)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.remove_circle,
                                                    color: Colors.red,
                                                    size: 18,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "virus",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff828282)),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    height: 18,
                                                    width: 1,
                                                    color: Color(0xff828282),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "Drugs",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff828282)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 14,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.add_circle,
                                                    color: Colors.green,
                                                    size: 18,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "add medication",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.blue),
                                                  ),
                                                ],
                                              ),
                                            ]),
                                      ),
                                      ExpandableButton(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Medications",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff828282)),
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
                                        color:
                                            Color.fromARGB(255, 196, 196, 196),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Show when locked",
                                style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[600]),
                              ),
                              Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                },
                                activeTrackColor: Colors.grey[400],
                                activeColor: Colors.green,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
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
