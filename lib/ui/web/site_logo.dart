import 'package:flutter/material.dart';

import '../../core/theming/font_weight_helper.dart';
import '../../core/widgets/custom_auto_size_text.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key
  });


  @override
  Widget build(BuildContext context) {
    return CustomAutoSizeText(
      text: "MA",
      minFontSize: 20,
      maxFontSize: 24,
      textStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeightHelper.bold,
        decoration: TextDecoration.underline,
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
