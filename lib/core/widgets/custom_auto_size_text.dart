import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomAutoSizeText extends StatelessWidget {
  final String text;
  final double minFontSize;
  final double maxFontSize;
  final TextStyle? textStyle;

  const CustomAutoSizeText({
    super.key,
    required this.text,
    this.minFontSize = 12,
    required this.maxFontSize,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final double fontSize = MediaQuery.sizeOf(context).width * 0.025;
    return AutoSizeText(
      text,
      style: textStyle?.copyWith(fontSize: fontSize),
      minFontSize: minFontSize,
      maxFontSize: maxFontSize,
    );
  }
}
