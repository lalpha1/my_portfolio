import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/project_utils.dart';

import '../constants/colors.dart';
//import 'dart:js' as js;

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    required this.project,
    super.key,
  });
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 300,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        children: [
          Image.asset(
            project.image,
            height: 140,
            width: 250,
            //fit: BoxFit.cover,
          ),
          // title
          Padding(
            padding: EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: CustomColor.whitePrimary),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: SizedBox(
              height: 35,
              child: Text(
                project.subtitle,
                style: TextStyle(
                  fontSize: 11,
                  color: CustomColor.whiteSecondary,
                ),
              ),
            ),
          ),
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 12,
            ),
            child: Row(
              children: [
                const Text(
                  "Available on:",
                  style: TextStyle(color: CustomColor.yellowSecondary),
                ),
                const Spacer(),
                if (project.androidLink != null)
                  GestureDetector(
                    child: InkWell(
                      onTap: () {
                        //js.context.callMethod("open", [project.androidLink]);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/android_icon.png",
                          width: 17,
                        ),
                      ),
                    ),
                  ),
                if (project.iosLink != null)
                  GestureDetector(
                    child: InkWell(
                      onTap: () {
                        //js.context.callMethod("open", [project.iosLink]);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/ios_icon.png",
                          width: 17,
                        ),
                      ),
                    ),
                  ),
                if (project.webLink != null)
                  GestureDetector(
                    child: InkWell(
                      onTap: () {
                        //   js.context.callMethod("open", [project.webLink]);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/web_icon.png",
                          width: 17,
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
