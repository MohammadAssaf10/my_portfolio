import 'package:flutter/material.dart';

import '../../core/utils/functions.dart';
import 'web_header.dart';

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
      ],
    );
  }
}
