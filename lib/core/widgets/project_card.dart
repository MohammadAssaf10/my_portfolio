import 'package:flutter/material.dart';

import '../../generated/assets.dart';
import '../theming/font_weight_helper.dart';
import '../utils/functions.dart';
import '../utils/project.dart';
import 'custom_auto_size_text.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: 280,
      height: 470,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            project.image,
            height: 200,
            width: 280,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: CustomAutoSizeText(
              text: project.title,
              minFontSize: 16,
              maxFontSize: 19,
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeightHelper.semiBold,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: CustomAutoSizeText(
                text: project.subtitle,
                maxFontSize: 15,
                textStyle: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.primary,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                Expanded(
                  child: CustomAutoSizeText(
                    text: "Available on:",
                    minFontSize: 10,
                    maxFontSize: 13,
                    textStyle: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 10,
                    ),
                  ),
                ),
                if (project.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        openUrl(project.androidLink!);
                      },
                      child: Image.asset(
                        Assets.imagesAndroidIcon,
                        width: 17,
                      ),
                    ),
                  ),
                if (project.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        openUrl(project.webLink!);
                      },
                      child: Image.asset(
                        Assets.imagesWebIcon,
                        width: 17,
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
