import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/utils/constant.dart';

class MobileSkillsData extends StatelessWidget {
  const MobileSkillsData({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: Column(
        children: [
          // platforms
          for (int i = 0; i < Constant.platformItems.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                leading: Image.asset(
                  Constant.platformItems[i]["img"],
                  width: 26,
                ),
                title: Text(Constant.platformItems[i]["title"]),
              ),
            ),
          const SizedBox(height: 50),

          // skills
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < Constant.skillItems.length; i++)
                Chip(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                  backgroundColor: Theme.of(context).colorScheme.onPrimary,
                  label: Text(Constant.skillItems[i]["title"]),
                  avatar: SvgPicture.asset(Constant.skillItems[i]["img"]),
                ),
            ],
          )
        ],
      ),
    );
  }
}
