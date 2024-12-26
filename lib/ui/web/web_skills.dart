import 'package:flutter/material.dart';

import '../../core/utils/constant.dart';
import '../../core/widgets/custom_auto_size_text.dart';

class WebSkills extends StatelessWidget {
  const WebSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return         Container(
      key: Constant.appBarKeys[1],
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(
        25,
        20,
        25,
        60,
      ),
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAutoSizeText(
            text: "What I can do",
            minFontSize: 24,
            maxFontSize: 28,
            textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          const SizedBox(height: 50),

          // platforms and skills
          // if (constraints.maxWidth >= kMedDesktopWidth)
          //   const SkillsDesktop()
          // else
          //   const SkillsMobile(),
        ],
      ),
    );
  }
}
