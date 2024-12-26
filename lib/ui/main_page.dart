import 'package:flutter/material.dart';

import '../core/widgets/custom_auto_size_text.dart';
import '../core/widgets/responsive_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        mobile: Container(
          color: Colors.red,
          child: const Center(
            child: CustomAutoSizeText(
              text: "Mobile Screen",
              maxFontSize: 17,
              minFontSize: 14,
              textStyle: TextStyle(),
            ),
          ),
        ),
        tablet: Container(
          color: Colors.blue,
          child: const Center(
            child: CustomAutoSizeText(
              text: "Tablet Screen",
              maxFontSize: 20,
              minFontSize: 17,
              textStyle: TextStyle(),
            ),
          ),
        ),
        desktop: Container(
          color: Colors.yellow,
          child: const Center(
            child: CustomAutoSizeText(
              text: "Desktop Screen",
              maxFontSize: 23,
              minFontSize: 20,
              textStyle: TextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
