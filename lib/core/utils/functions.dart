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

void sendEmail({
  required String subject,
  required String body,
}) async {
  String encodedSubject = Uri.encodeComponent(subject);
  String encodedBody = Uri.encodeComponent(body);
  String mailtoLink =
      'mailto:mhamad234assaf@gmail.com?subject=$encodedSubject&body=$encodedBody';

  if (await canLaunchUrl(Uri.parse(mailtoLink))) {
    await launchUrl(Uri.parse(mailtoLink));
  } else {
    throw 'Could not launch $mailtoLink';
  }
}
