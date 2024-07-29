import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/logo.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.0,
        width: double.maxFinite,
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        decoration: kHeaderDecoration,
        child: Row(
          children: [
            Logo(
              onTap: () {},
            ),
            Spacer(),
            for (int i = 0; i < navTitle.length; i++)
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      navTitle[i],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.whitePrimary,
                      ),
                    )),
              ),
          ],
        ));
  }
}
