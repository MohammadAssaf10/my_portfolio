import 'package:flutter/material.dart';

class Constant {
  Constant._();

  static const List<String> appBarTitles = [
    "Home",
    "Skills",
    "Projects",
    "Contact"
  ];
  static const List<IconData> appBarIcons = [
    Icons.home,
    Icons.handyman_outlined,
    Icons.apps,
    Icons.web,
  ];

  static final List<GlobalKey> appBarKeys = List.generate(3, (index) => GlobalKey());
}

class SocialMediaLinks {
  static const String github = "https://";
  static const String linkedIn = "https://";
  static const String facebook = "https://";
  static const String instagram = "https://www.google.com";
  static const String telegram = "https://";
  static const String blog = "https://www.shohruhak.com/tech";
}
