import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 30,
        ),
        height: screenHeight,
        constraints: const BoxConstraints(minHeight: 560),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///////////////// very important to master
            ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(colors: [
                  CustomColor.scaffoldBg,
                  CustomColor.scaffoldBg.withOpacity(0.6),
                ]).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: Image.asset(
                "assets/my_table.png",
                width: screenWidth,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const Text(
              " Hi, \nI'm Alfred FD\n Flutter Developper ",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
                height: 1.5,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 180,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Get in touch",
                  style: TextStyle(color: CustomColor.whitePrimary),
                ),
              ),
            ),
          ],
        ));
  }
}
