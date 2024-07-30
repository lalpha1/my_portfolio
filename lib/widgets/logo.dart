import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class Logo extends StatelessWidget {
  Logo({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          const Text(
            "FDA",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              color: CustomColor.yellowSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
