import 'package:flutter/material.dart';

import 'constant.dart';

void scrollToSection(int navIndex) {
  final GlobalKey key = Constant.appBarKeys[navIndex];
  Scrollable.ensureVisible(
    key.currentContext!,
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOut,
  );
}
