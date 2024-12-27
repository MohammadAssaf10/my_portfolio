import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void scrollToSection(GlobalKey globalKey) {
  Scrollable.ensureVisible(
    globalKey.currentContext!,
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOut,
  );
}

void openUrl(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    throw Exception('Could not launch $uri');
  }
}
