import 'dart:io';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Results extends StatefulWidget {
  final File image;
  final List output;
  final String description;
  const Results({
    super.key,
    required this.image,
    required this.output,
    required this.description,
  });

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            "Result - ${widget.output[0]['label']}",
            style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff4f4f4f)),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Overview",
            style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff4f4f4f)),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.description,
            style: GoogleFonts.roboto(
                fontSize: 16,
                height: 1.5,
                fontWeight: FontWeight.w400,
                color: const Color(0xff828282)),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
