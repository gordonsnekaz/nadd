import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialistCard extends StatelessWidget {
  final String topic;
  final String summary;
  final String picImage;

  const SpecialistCard(
      {Key? key,
      required this.topic,
      required this.summary,
      required this.picImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(picImage),
            colorFilter: ColorFilter.mode(
              const Color(0xff828282).withOpacity(1),
              BlendMode.modulate,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10)),
      width: 160,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              topic,
              style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Text(
              summary,
              style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ]),
    );
  }
}
