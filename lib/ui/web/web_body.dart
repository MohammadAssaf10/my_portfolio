import 'package:flutter/material.dart';

import '../../core/utils/functions.dart';
import 'main_web.dart';
import 'web_header.dart';
import 'web_skills.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        WebHeader(
          onNavMenuTap: (int navIndex) {
            scrollToSection(navIndex);
          },
        ),
        const MainWeb(),
        const WebSkills(),
        const SizedBox(height: 30),
      ],
    );
  }
}
