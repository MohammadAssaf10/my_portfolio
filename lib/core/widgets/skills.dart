import 'package:flutter/material.dart';

import '../utils/constant.dart';
import 'custom_auto_size_text.dart';

class Skills extends StatelessWidget {
  final Widget skillsData;

  const Skills({
    super.key,
    required this.skillsData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            minFontSize: 22,
            maxFontSize: 26,
            textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          const SizedBox(height: 50),
          skillsData,
        ],
      ),
    );
  }
}
