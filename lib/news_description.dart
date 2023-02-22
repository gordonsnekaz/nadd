// ignore_for_file: use_key_in_widget_constructors

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsDescriptionPage extends StatelessWidget {
  final String topic;
  final String description;
  const NewsDescriptionPage({
    required this.topic,
    required this.description,
  });

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
                              description,
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  height: 1.5,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff828282)),
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
