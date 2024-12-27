import 'package:flutter/material.dart';

import '../../core/theming/font_weight_helper.dart';
import '../../core/utils/constant.dart';
import '../../core/utils/functions.dart';
import '../../core/widgets/custom_auto_size_text.dart';
import 'site_logo.dart';

class WebHeader extends StatelessWidget {
  const WebHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Constant.appBarKeys.first,
      height: 60,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            Theme.of(context).colorScheme.primary,
          ],
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < Constant.appBarTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {
                  scrollToSection(Constant.appBarKeys[i]);
                },
                child: CustomAutoSizeText(
                  text: Constant.appBarTitles[i],
                  minFontSize: 16,
                  maxFontSize: 20,
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeightHelper.medium,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
