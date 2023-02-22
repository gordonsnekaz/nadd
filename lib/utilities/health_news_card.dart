// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadd/covid_19_news.dart';
import 'package:nadd/health_news.dart';
import 'package:nadd/most_diagnosed_diseases.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HeatlhNewsCard extends StatelessWidget {
  final String pic;
  final String topic;
  //fina

  const HeatlhNewsCard({Key? key, required this.pic, required this.topic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Padding(
        padding: EdgeInsets.only(left: 25.0),
        child: GestureDetector(
          onTap: () => {
            if (topic == "Health news")
              pushNewScreen(
                context,
                screen: HealthNewsPage(),
                withNavBar: true, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              )
            else if (topic == "Covid-19 latest news")
              pushNewScreen(
                context,
                screen: CovidNewsPage(),
                withNavBar: true, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              )
            else if (topic == "Get most diagnosed diseases")
              pushNewScreen(
                context,
                screen: MostDiagnosedDiseasesPage(),
                withNavBar: true, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              )
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffDDEDF9),
                      Color(0xffffffff),
                    ],
                  ),
                ),
                child: SvgPicture.asset(
                  pic,
                  height: 150,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.settings_outlined,
                    size: 13,
                    color: Color(0xff828282),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Educational',
                    style: GoogleFonts.roboto(
                        fontSize: 11, color: Color(0xff828282)),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                topic,
                style:
                    GoogleFonts.roboto(fontSize: 14, color: Color(0xff4F4F4F)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
