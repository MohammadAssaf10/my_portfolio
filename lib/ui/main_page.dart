import 'package:flutter/material.dart';

import '../core/widgets/custom_auto_size_text.dart';
import '../core/widgets/responsive_widget.dart';
import 'web/web_body.dart';

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
        tablet: const WebBody(),
        desktop: const WebBody(),
      ),
    );
  }
}
