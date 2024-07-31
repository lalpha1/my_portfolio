import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../utils/project_utils.dart';
import 'project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          // title
          const Text(
            " Projects",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          SizedBox(
            height: 15,
          ),
          //card
          // ConstrainedBox(
          //constraints: BoxConstraints(maxHeight: 950),
          Wrap(spacing: 25, runSpacing: 25, children: [
            for (int i = 0; i < hobbyProjectUtils.length; i++)
              ProjectCard(
                project: hobbyProjectUtils[i],
              ),
          ]),
        ],
      ),
    );
  }
}
