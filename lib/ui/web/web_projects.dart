import 'package:flutter/material.dart';

import '../../core/utils/constant.dart';
import '../../core/widgets/custom_auto_size_text.dart';
import '../../core/widgets/project_card.dart';

class WebProjects extends StatelessWidget {
  const WebProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      key: Constant.appBarKeys[1],
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          // Work projects title
          CustomAutoSizeText(
            text:"Work Projects",
            minFontSize: 24,
            maxFontSize: 27,
            textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          const SizedBox(height: 50),
          // Work projects cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < Constant.workProject.length; i++)
                  ProjectCard(
                    project: Constant.workProject[i],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
