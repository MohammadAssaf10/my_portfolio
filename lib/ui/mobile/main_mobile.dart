import 'package:flutter/material.dart';

import '../../core/theming/font_weight_helper.dart';
import '../../core/utils/constant.dart';
import '../../core/utils/functions.dart';
import '../../core/widgets/custom_auto_size_text.dart';
import '../../generated/assets.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 30,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // avatar img
          Image.asset(
            Assets.imagesMyFlutterAvatar,
            width: screenWidth,
          ),
          const SizedBox(height: 30),
          // intro message
          CustomAutoSizeText(
            text: "Hi,\nI'm Mohammad Assaf\nA Flutter Developer",
            maxFontSize: 26,
            minFontSize: 18,
            textStyle: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeightHelper.bold,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          const SizedBox(height: 15),
          // contact btn
          SizedBox(
            width: 190,
            child: ElevatedButton(
              onPressed: () {
                scrollToSection(Constant.appBarKeys.last);
              },
              child: CustomAutoSizeText(
                text: "Contact me",
                minFontSize: 12,
                maxFontSize: 15,
                textStyle: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeightHelper.bold,
                  fontSize: 13,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
