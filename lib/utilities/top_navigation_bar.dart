// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadd/settings_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class TopNavigationBar extends StatelessWidget {
  final String username;

  TopNavigationBar({required this.username});

  /*_openPage(BuildContext context) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => MyProfilePage()));*/

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffDDEDF9),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // Greetings
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //spacer
                const SizedBox(
                  height: 20,
                ),

                Text(
                  '',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                //spacer
                const SizedBox(
                  height: 20,
                ),
              ],
            ),

            //Profile Pic
            GestureDetector(
              onTap: () {
                pushNewScreen(
                  context,
                  screen: SettingsPage(),
                  withNavBar: true, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Color(0xffDDEDF9),
                      borderRadius: BorderRadius.circular(40)),
                  child: Icon(
                    Icons.settings_outlined,
                    color: Color(0xff828282),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
