import 'package:flutter/material.dart';
import 'package:nadd/diagnose_page.dart';
import 'package:nadd/help_center.dart';
import 'package:nadd/landing_page.dart';
import 'package:nadd/profile_page.dart';
import 'package:nadd/reports_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 2);

  //Bottom navigation screens
  List<Widget> _buildScreens() {
    return [
      const DiagnosePage(),
      const HelpPage(),
      LandingPage(),
      ReportsPage(),
      const ProfilePage()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.medication_outlined),
        title: ("Diagnose"),
        activeColorPrimary: const Color(0xff9B51E0),
        inactiveColorPrimary: const Color(0xff828282),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.health_and_safety_sharp),
        title: ("Help"),
        activeColorPrimary: const Color(0xff9B51E0),
        inactiveColorPrimary: const Color(0xff828282),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_outlined),
        title: ("Home"),
        activeColorPrimary: const Color(0xff9B51E0),
        inactiveColorPrimary: const Color(0xff828282),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.document_scanner_outlined),
        title: ("Report"),
        activeColorPrimary: const Color(0xff9B51E0),
        inactiveColorPrimary: const Color(0xff828282),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_outline),
        title: ("Profile"),
        activeColorPrimary: const Color(0xff9B51E0),
        inactiveColorPrimary: const Color(0xff828282),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: const Color(0xffFFFFFF),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: const NavBarDecoration(
        border: Border(
          top: BorderSide(
            color: Color(0xff9B51E0),
            width: 0.3,
          ),
        ),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 400),
      ),
      navBarStyle:
          NavBarStyle.style3, // Choose the nav bar style with this property.
    );
  }
}
