import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/utils/constant.dart';
import '../../core/widgets/custom_auto_size_text.dart';

class WebSkillsData extends StatelessWidget {
  const WebSkillsData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // platforms
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (int i = 0; i < Constant.platformItems.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    leading: Image.asset(
                      Constant.platformItems[i]["img"],
                      width: 26,
                    ),
                    title: CustomAutoSizeText(
                      text: Constant.platformItems[i]["title"],
                      maxFontSize: 20,
                    ),
                  ),
                )
            ],
          ),
        ),
        const SizedBox(width: 50),

        // skills
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 0; i < Constant.skillItems.length; i++)
                  Chip(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                    backgroundColor: Theme.of(context).colorScheme.onPrimary,
                    label: Text(Constant.skillItems[i]["title"]),
                    avatar: SvgPicture.asset(Constant.skillItems[i]["img"]),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
