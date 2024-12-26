import 'package:flutter/material.dart';

class MyThemeData {
  MyThemeData._();

  static ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
    );
  }
}
