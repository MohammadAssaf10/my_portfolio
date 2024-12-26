import 'package:flutter/material.dart';

class MyThemeData {
  MyThemeData._();

  static ThemeData getTheme() {
    return ThemeData.dark(
      useMaterial3: true,
    ).copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF252734),
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFF333646),
        secondary: Color(0xFFFFC25C),
        tertiary: Color(0xFFEAEAEB),
      ),
    );
  }
}

// class CustomColor {
//   static const Color scaffoldBg = Color(0xff252734);
//   static const Color bgLightk = Color(0xff333646);
//   static const Color bgLight2 = Color(0xff424657);
//   static const Color textFieldBg = Color(0xffC8C9CE);
//   static const Color hintDark = Color(0xff666874);
//   static const Color yellowSecondary = Color(0xffFFC25C);
//   static const Color yellowPrimary = Color(0xffFFAF29);
//   static const Color whitePrimary = Color(0xffEAEAEB);
//
//   static const Color whiteSecondary = Color(0xffC8C9CE);
// }
