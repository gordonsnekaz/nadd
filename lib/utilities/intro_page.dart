import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage1 extends StatelessWidget {
  final String topic;
  final String description;

  const IntroPage1({Key? key, required this.topic, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff5f8ff),
      child: Center(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Expanded(child: Container()),
            Image.asset(
              'assets/nadd_logo.png',
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              topic,
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff219653),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              description,
              style: GoogleFonts.roboto(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff828282),
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(child: Container()),
          ],
        ),
      )),
    );
  }
}
