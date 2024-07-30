import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';

import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        backgroundColor: CustomColor.scaffoldBg,
        // use ListView for scrollable list
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // MAIN

            if (constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            if (constraints.maxWidth >= kMinDesktopWidth)
              MainDesktop(screenHeight: screenHeight, screenWidth: screenWidth)
            else
              MainMobile(screenHeight: screenHeight, screenWidth: screenWidth),
            // SKILLS
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),

            // PROJECTS
            Container(
              height: 500,
              width: double.maxFinite,
              //color: Colors.blueGrey,
            ),

            // CONTACT
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            // FOOTER
          ],
        ),
      );
    });
  }
}
