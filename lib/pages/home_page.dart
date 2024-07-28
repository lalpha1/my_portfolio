import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.scaffoldBg,
        // use ListView for scrollable list
        body: ListView(
          children: [
            // MAIN
            Container(
              height: 500,
              width: double.maxFinite,
              child: Row(
                children: [
                  Text("AFD"),
                  TextButton(
                    onPressed: () {},
                    child: Text('button'),
                  ),
                ],
              ),
            ),

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
        ));
  }
}
