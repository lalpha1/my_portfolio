import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // platforms
        for (int i = 0; i < platformItems.length; i++)
          Container(
            margin: EdgeInsets.only(bottom: 5),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: CustomColor.bgLight2,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              leading: Image.asset(
                platformItems[i]['img'],
                width: 26,
              ),
              title: Text(platformItems[i]["title"]),
            ),
          ),

        const SizedBox(
          height: 50,
        ),

        // skills

        Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            for (int i = 0; i < skillItems.length; i++)
              Chip(
                padding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                label: Text(skillItems[i]["title"]),
                avatar: Image.asset(skillItems[i]["img"]),
              ),
          ],
        )
      ],
    );
  }
}
