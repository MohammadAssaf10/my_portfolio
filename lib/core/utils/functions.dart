import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constant.dart';

void scrollToSection(int navIndex) {
  final GlobalKey key = Constant.appBarKeys[navIndex];
  Scrollable.ensureVisible(
    key.currentContext!,
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOut,
  );
}

void openUrl(String url) async {
  final Uri parserUrl = Uri.parse(url);
  if (!await canLaunchUrl(parserUrl)) {
    launchUrl(
      parserUrl,
      mode: LaunchMode.externalApplication,
    );
  }
}
