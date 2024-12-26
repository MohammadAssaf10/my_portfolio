import 'package:flutter/material.dart';

import '../../core/helpers/constant.dart';
import '../../core/widgets/custom_auto_size_text.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        /// MAIN
        Container(
          height: 60,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
              const CustomAutoSizeText(
                text: "MA",
                minFontSize: 20,
                maxFontSize: 25,
                textStyle: TextStyle(),
              ),
              const Spacer(),
              for (int i = 0; i < Constant.navTitles.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: TextButton(
                    onPressed: () {},
                    child: CustomAutoSizeText(
                      text: Constant.navTitles[i],
                      minFontSize: 20,
                      maxFontSize: 25,
                      textStyle: const TextStyle(),
                    ),
                  ),
                )
            ],
          ),
        ),
      ],
    );
  }
}
