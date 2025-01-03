import 'package:flutter/material.dart';

import '../../core/theming/font_weight_helper.dart';
import '../../core/utils/constant.dart';
import '../../core/utils/functions.dart';
import '../../core/widgets/custom_auto_size_text.dart';
import '../../generated/assets.dart';

class MainWeb extends StatelessWidget {
  const MainWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAutoSizeText(
                  text: "Hi,\nI'm Mohammad Assaf\nA Flutter Developer",
                  minFontSize: 26,
                  maxFontSize: 30,
                  textStyle: TextStyle(
                    fontSize: 28,
                    height: 1.5,
                    fontWeight: FontWeightHelper.bold,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      scrollToSection(Constant.appBarKeys.last);
                    },
                    child: CustomAutoSizeText(
                      text: "Contact me",
                      minFontSize: 13,
                      maxFontSize: 17,
                      textStyle: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontWeight: FontWeightHelper.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            Assets.imagesMyFlutterAvatar,
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
